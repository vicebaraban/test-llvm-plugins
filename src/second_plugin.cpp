#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm-18/llvm/IR/BasicBlock.h>
#include <llvm-18/llvm/IR/Instruction.h>
#include <llvm-18/llvm/IR/Instructions.h>
#include <llvm-18/llvm/IR/PassManager.h>
#include <llvm-18/llvm/Support/Casting.h>


struct CountArgumentsInPhiNodes: llvm::PassInfoMixin<CountArgumentsInPhiNodes> {

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &) {
        llvm::errs() << "Running: count arguments in phi nodes\n";
        llvm::errs() << "function " << F.getName() << "\n";
        
        for (llvm::BasicBlock &BB : F) {
            for (llvm::Instruction &I : BB) {
                if (auto *PN = llvm::dyn_cast<llvm::PHINode>(&I)) {
                    llvm::errs() << "phi node has " << PN->getNumIncomingValues() << " arguments\n";
                }
            }
        } 

        return llvm::PreservedAnalyses::all();
    }

    static bool isRequired() { return true; }

};


struct CountVariablesInBasicBlocks: llvm::PassInfoMixin<CountVariablesInBasicBlocks> {

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &) {
        llvm::errs() << "Running: count variables in basic block\n";
        llvm::errs() << "function " << F.getName() << "\n";

        int count_variables = 0;
        
        for (llvm::BasicBlock &BB : F) {
            for (llvm::Instruction &I : BB) {
                if (llvm::isa<llvm::AllocaInst>(&I)) {
                    count_variables++;
                }
            }

            llvm::errs() << "basic block " << BB.getName() << " has " << count_variables << " variables\n"; 
        }

        return llvm::PreservedAnalyses::all();
    }

    static bool isRequired() { return true; }

};


llvm::PassPluginLibraryInfo getSecondPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "SecondPlugin", LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](llvm::StringRef Name, llvm::FunctionPassManager &FPM,
                       llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) {
                        if (Name == "pass") {
                            FPM.addPass(CountArgumentsInPhiNodes());
                            FPM.addPass(CountVariablesInBasicBlocks());
                            return true;
                        }
                        return false;
                    });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getSecondPluginInfo();
}