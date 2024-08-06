#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/IRBuilder.h"
#include <llvm-18/llvm/ADT/StringRef.h>
#include <llvm-18/llvm/ADT/Twine.h>
#include <llvm-18/llvm/IR/PassManager.h>
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include <llvm-18/llvm/IR/BasicBlock.h>
#include <llvm-18/llvm/IR/Instruction.h>
#include <llvm-18/llvm/IR/Instructions.h>
#include <llvm-18/llvm/IR/PassManager.h>
#include <llvm-18/llvm/Support/Casting.h>
#include "llvm/Transforms/Utils/BasicBlockUtils.h"


struct SplitBasicBlocks : llvm::PassInfoMixin<SplitBasicBlocks> {

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &) {

        for (llvm::BasicBlock &BB: F) {
            int block_length = BB.size();
            if (block_length > 5) {
                

                llvm::BasicBlock::iterator BI = BB.begin();
                llvm::BasicBlock *CurrentBB = &BB;
                llvm::IRBuilder<> Builder(CurrentBB);

                for (int i = 0; i < block_length; i += 5) {
                    if (i + 5 >= block_length) {
                        break;
                    }

                    llvm::BasicBlock::iterator SplitPoint = std::next(BI, 4);
                    llvm::BasicBlock *NewBB = CurrentBB->splitBasicBlock(SplitPoint);

                    CurrentBB = NewBB;
                    BI = NewBB->begin();
                    Builder.SetInsertPoint(&*BI);
                }
            }

        }

        return llvm::PreservedAnalyses::all();
    }

    static bool isRequired() { return true; }

};

struct AddDeadBlocks : llvm::PassInfoMixin<AddDeadBlocks> {

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &) {

        llvm::BasicBlock *firstBB = &F.getEntryBlock();
        llvm::BasicBlock *secondBB = firstBB->getNextNode();
        if (secondBB != nullptr) {
            llvm::BasicBlock *DeadBlock = llvm::SplitEdge(firstBB, secondBB);
            llvm::Instruction &terminator_inst = *firstBB->getTerminator();
            terminator_inst.eraseFromParent();
            llvm::IRBuilder<> builder(firstBB);
            llvm::Value *condition = llvm::ConstantInt::getTrue(F.getContext());
            builder.CreateCondBr(condition, secondBB, DeadBlock);
        } 

        return llvm::PreservedAnalyses::all();
    }


    static bool isRequired() { return true; }

};



llvm::PassPluginLibraryInfo getBBModificationPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "BBModificationPlugin", LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](llvm::StringRef Name, llvm::FunctionPassManager &FPM,
                       llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) {
                        if (Name == "pass") {
                            FPM.addPass(SplitBasicBlocks());
                            FPM.addPass(AddDeadBlocks());
                            return true;
                        }
                        return false;
                    });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getBBModificationPluginInfo();
}