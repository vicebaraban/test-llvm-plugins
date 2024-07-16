#include "llvm/Passes/PassPlugin.h"


extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK llvmGetPassPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "MyPlugin", "v0.1", [](llvm::PassBuilder &PB) {}};
}

int main() {
    llvmGetPassPluginInfo();
    return 0;
}