return {
  {
    "sigmaSd/deno-nvim",
    opts = {
      dap = {
        adapter = {
          executable = {
            args = {
              "~/.local/share/microsoft/vscode-js-debug/out/src/build/dapCustom.js",
              "${port}",
            },
          },
        },
      },
    },
  },
}
