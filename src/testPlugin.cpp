#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"

using namespace llvm;

namespace {

struct ModuleAnalysisPass : PassInfoMixin<ModuleAnalysisPass> {
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
        int functionCount = 0;
        for (auto &F : M) {
            errs() << " Function name: " << F.getName() << "\n";
            functionCount++;
        }
        errs() << " Functions count: " << functionCount << "\n";
        return PreservedAnalyses::all();
    }
    static bool isRequired() { return true; }
};


struct FunctionAnalysisPass : PassInfoMixin<FunctionAnalysisPass> {
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &) {
        errs() << " Function name: " << F.getName() << "\n";
        errs() << " Arguments count: " << F.arg_size() << "\n";
        return PreservedAnalyses::all();
    }
    static bool isRequired() { return true; }
};


struct LoopAnalysisPass : PassInfoMixin<LoopAnalysisPass> {
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
        LoopInfo &LL = FAM.getResult<LoopAnalysis>(F);
        for (Loop *L : LL) {
            unsigned loopSize = L->getHeader()->size();
            errs() << " Loop size: " << loopSize << "\n";
        }
        return PreservedAnalyses::all();
    }
    static bool isRequired() { return true; }
};

} 


llvm::PassPluginLibraryInfo getFirstPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "FirstPlugin", LLVM_VERSION_STRING,
        [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                    ArrayRef<PassBuilder::PipelineElement>) {
                    if (Name == "module-analysis-pass") {
                        MPM.addPass(ModuleAnalysisPass());
                        return true;
                    }
                    return false;
                });

            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                    ArrayRef<PassBuilder::PipelineElement>) {
                    if (Name == "function-analysis-pass") {
                        FPM.addPass(FunctionAnalysisPass());
                        return true;
                    }
                    return false;
                });

            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                    ArrayRef<PassBuilder::PipelineElement>) {
                    if (Name == "loop-analysis-pass") {
                        FPM.addPass(LoopAnalysisPass());
                        return true;
                    }
                    return false;
                });
        }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getFirstPluginInfo();
}
