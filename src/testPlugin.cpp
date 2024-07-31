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


// struct FunctionAnalysisPass : AnalysisInfoMixin<FunctionAnalysisPass> {
//     PreservedAnalyses run(Function &F, FunctionAnalysisManager &) {
//         errs() << " Function name: " << F.getName() << "\n";
//         errs() << " Count: " << F.arg_size() << "\n";
//         return PreservedAnalyses::all();
//     }
//     static bool isRequired() { return true; }
// };


// struct LoopAnalysisPass : AnalysisInfoMixin<LoopAnalysisPass> {
//     PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
//         LoopInfo &LL = FAM.getResult<LoopAnalysis>(F);
//         for (Loop *L : LL) {
//             unsigned loopSize = L->getHeader()->size();
//             errs() << " Loop size: " << loopSize << "\n";
//         }
//         return PreservedAnalyses::all();
//     }
//     static bool isRequired() { return true; }
// };

} 


llvm::PassPluginLibraryInfo getFirstPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "FirstPlugin", LLVM_VERSION_STRING,
        [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                    ArrayRef<PassBuilder::PipelineElement>) {
                        MPM.addPass(ModuleAnalysisPass());
                        // FunctionPassManager FPM;
                        // FPM.addPass(FunctionAnalysisPass());
                        // FPM.addPass(LoopAnalysisPass());
                        return true;
                    }
                );
        }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getFirstPluginInfo();
}
