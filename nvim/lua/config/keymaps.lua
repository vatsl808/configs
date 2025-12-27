vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })
vim.keymap.set({ "n", "v" }, "<leader>a", "ggVG", {desc = "Select all",})

vim.keymap.set("n", "<leader>fn", function()
  local name = vim.fn.input("New file: ")
  if name ~= "" then
    vim.cmd("edit " .. name)
  end

end, { desc = "New file" })

vim.keymap.set("n", "<leader>r", function()
  vim.cmd("w")
  vim.cmd("belowright vsplit")
  ext = vim.fn.expand('%:e')
  if ext == "c" then
	  vim.cmd("terminal gcc % -o main && ./main");
  elseif ext == "cpp" then
	  vim.cmd("terminal g++ % -o main && ./main");
  elseif ext == "lua" then
	  vim.cmd("terminal lua %")
  elseif ext == "py" then
	  vim.cmd("terminal python3 %")
  else
	  print("Mind Your Language Buddy..!")
  end
end, { desc = "Compile & Run C (terminal)" })



-- Save file
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Write file" })
-- Quit file
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit file" })



-- Copy to system clipboard
vim.keymap.set("n", "<leader>c", '"+yy', { desc = "Copy line to clipboard" })
vim.keymap.set("v", "<leader>c", '"+y', { desc = "Copy selection to clipboard" })

-- Open explorer
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true })

