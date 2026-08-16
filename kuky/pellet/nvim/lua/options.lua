-- options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.guicursor = ""
vim.opt.scrolloff = 999
vim.opt.clipboard = 'unnamedplus'
vim.opt.cursorline = true

vim.api.nvim_create_user_command("PackUpdate", function()
    vim.pack.update()
    require("blink.cmp").build():wait(60000)
end, {})

-- remaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set({"n", "v"}, "H", "gg")
