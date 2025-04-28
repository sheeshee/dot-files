return {
	-- Core LSP support
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {},
		config = function()
			local lspconfig = require('lspconfig')

			-- Python
			lspconfig.pyright.setup({})
			lspconfig.ruff.setup({})

			-- Key mappings
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "Go to declaration" })
      			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
      			vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Show hover information" })
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "Go to implementation" })
			vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename symbol" })
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code actions" })

			-- Diagnostic settings
			vim.diagnostic.config({
				-- set virtual_text to false to not interfere with
				-- rachertier/tiny-inline-diagnostics.nvim
				virtual_text = false,
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})

			-- Disable ruff in favour of pyright in some instances
			vim.api.nvim_create_autocmd("LspAttach", {
  				 group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
				callback = function(args)
    					local client = vim.lsp.get_client_by_id(args.data.client_id)
    					if client == nil then
      						return
    					end
    					if client.name == 'ruff' then
      						-- Disable hover in favor of Pyright
      						client.server_capabilities.hoverProvider = false
    					end
  				end,
  				desc = 'LSP: Disable hover capability from Ruff',
			})
		end
	},
	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {},
	}
}
