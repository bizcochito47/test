return {
  "lambdalisue/vim-suda",
  config = function()
    vim.keymap.set("n", "<C-s>", "<cmd>SudaWrite<cr>", { desc = "SudaWrite" })  
  end
}
