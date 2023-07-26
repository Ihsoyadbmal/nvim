return {
	'neovim/nvim-lspconfig',
	dependencies = {
		{'williamboman/mason.nvim', config = true},
		'williamboman/mason-lspconfig.nvim'
	},
	config = function()
	end,
	opts = function()
		local on_attach = function(_, bufnr)
	--		local nmap = function(keys, func, desc)
	--			if desc then
	--				desc = 'LSP: ' .. desc
	--			end
	--			vim.keymap.set('n', keys, func, {buffer=bufnr, desc=desc})
	--		end

			vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
				vim.lsp.buf.format()
			end, {desc = 'Format current buffer with LSP'})
		end

		-- servers list
		local servers = {
			pyright = {},
			lua_ls = {
				workspace = {checkThirdParty = false},
				telemetry = {enable = false},
				Lua = {
					diagnostics = {globals = {'vim'}}
				}
			}
		}

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

		require('mason').setup({})

		local mason_lspconfig = require 'mason-lspconfig'
		mason_lspconfig.setup {
			ensure_installer = vim.tbl_keys(servers)
		}

		mason_lspconfig.setup_handlers {
			function(server_name)
				require('lspconfig')[server_name].setup {
					capabilities = capabilities,
					on_attach = on_attach,
					settings = servers[server_name]
				}
			end
		}
		return { }
	end
}
