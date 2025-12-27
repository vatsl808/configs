local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

vim.lsp.config("c_ls", {
	cmd = { 'clangd' },
	filetypes = { 'c', 'cpp' },
	root_markers = { "compile_commands.json", "compile_flags.txt", "CMakeLists.txt", "Makefile", ".git" }, 
	capabilities = capabilities,	
})

vim.lsp.enable("c_ls")
vim.lsp.enable("ts_ls")
