vim.g.mapleader = " "

-- plugins installation
vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons', 
    'https://github.com/nvim-lualine/lualine.nvim',
    "https://github.com/Kopihue/nord",
    "https://github.com/Kopihue/after-dark",
    "https://github.com/rose-pine/neovim",
    "https://github.com/sphamba/smear-cursor.nvim",
    "https://github.com/windwp/nvim-autopairs",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/saghen/blink.lib",
    "https://github.com/saghen/blink.cmp",
    "https://github.com/romus204/tree-sitter-manager.nvim",
    "https://github.com/anuvyklack/pretty-fold.nvim",
})

require("plugins")
require("options")

-- disable lsp syntax highlighting
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
	local client = vim.lsp.get_client_by_id(args.data.client_id)
	if client then
	    client.server_capabilities.semanticTokensProvider = nil
	end
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    callback = function()
        vim.opt.autoindent = false
        vim.opt.smartindent = false
        vim.opt.cindent = false
        vim.opt.indentexpr = ""
    end,
})
