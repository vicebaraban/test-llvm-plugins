#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
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


struct PrintLengthBasicBlocks : llvm::PassInfoMixin<PrintLengthBasicBlocks> {

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &) {

        for (llvm::BasicBlock &BB: F) {
            int blockLength = BB.size();
            llvm::errs() << blockLength << "\n";
        }
            

        return llvm::PreservedAnalyses::all();
    }

    static bool isRequired() { return true; }

};


llvm::PassPluginLibraryInfo getPrintBBLengthPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "PrintBBLengthPlugin", LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](llvm::StringRef Name, llvm::FunctionPassManager &FPM,
                       llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) {
                        if (Name == "pass") {
                            FPM.addPass(PrintLengthBasicBlocks());
                            return true;
                        }
                        return false;
                    });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getPrintBBLengthPluginInfo();
}