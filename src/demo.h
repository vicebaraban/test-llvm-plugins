#ifndef ANALYSIS_MANAGER_H_
#define ANALYSIS_MANAGER_H_

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

namespace {
    struct ModulePassFuncList : public llvm::PassInfoMixin<ModulePassFuncList> {

        llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &);

        static bool isRequired();
    };

    struct FunctionPassBranchCounter : public llvm::PassInfoMixin<FunctionPassBranchCounter> {
        llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

        static bool isRequired();
    };

    struct LoopPassLength : public llvm::PassInfoMixin<LoopPassLength> {
        llvm::PreservedAnalyses run(llvm::Loop &L, llvm::LoopAnalysisManager &AM,
                                    llvm::LoopStandardAnalysisResults &AR, llvm::LPMUpdater &U);

        static bool isRequired();
    };
} // namespace

#endif // ANALYSIS_MANAGER_H_