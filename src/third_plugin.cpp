#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
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
#include <string>


struct AddPrintBasicBlockName : llvm::PassInfoMixin<AddPrintBasicBlockName> {

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &) {

        llvm::Module *M = F.getParent();
        llvm::LLVMContext &Context = M->getContext();
        llvm::FunctionType *printf_type = llvm::FunctionType::get(llvm::IntegerType::getInt32Ty(Context),
            llvm::PointerType::get(llvm::Type::getInt8Ty(Context), 0), true);
        llvm::FunctionCallee printf_func = M->getOrInsertFunction("printf", printf_type);

        int index = 0;

        for (llvm::BasicBlock &BB : F) {
            llvm::Instruction &firstInst = BB.front();
            
            llvm::LLVMContext &context = F.getContext();

            if (!BB.hasName()) {
                BB.setName("BB" + std::to_string(index));
                index++;
            }

            std::string block_name = BB.getName().str();

            llvm::IRBuilder<> builder(&firstInst);
            builder.SetInsertPoint(&firstInst);

            llvm::Value *format_str = builder.CreateGlobalStringPtr("Block " + block_name + "\n");

            builder.CreateCall(printf_func, format_str);
        }
        return llvm::PreservedAnalyses::all();
    }

    static bool isRequired() { return true; }

};


llvm::PassPluginLibraryInfo getThirdPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "ThirdPlugin", LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](llvm::StringRef Name, llvm::FunctionPassManager &FPM,
                       llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) {
                        if (Name == "pass") {
                            FPM.addPass(AddPrintBasicBlockName());
                            return true;
                        }
                        return false;
                    });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getThirdPluginInfo();
}