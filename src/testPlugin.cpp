#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"

using namespace llvm;

namespace {

struct ModuleAnalysisPass : AnalysisInfoMixin<ModuleAnalysisPass()> {
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


} 


llvm::PassPluginLibraryInfo getFirstPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "FirstPlugin", LLVM_VERSION_STRING,
        [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                    ArrayRef<PassBuilder::PipelineElement>) {
                        MPM.addPass(ModuleAnalysisPass());
                        return true;
                    }
                );
        }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getFirstPluginInfo();
}
