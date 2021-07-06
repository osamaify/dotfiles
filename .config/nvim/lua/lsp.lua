local lsp = require("lspconfig")

local function on_attach()
end

lsp.clangd.setup({
	on_attach = on_attach,
	root_dir = function() return vim.loop.cwd() end,
})

lsp.rust_analyzer.setup({ on_attach = on_attach })

lsp.gopls.setup({
	on_attach = on_attach,
	cmd = {"gopls"},
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
})

lsp.pyright.setup({ on_attach = on_attach })

lsp.tsserver.setup({ on_attach = on_attach })
lsp.svelte.setup({ on_attach = on_attach })
lsp.vuels.setup({ on_attach = on_attach })

require("compe").setup({
	enabled = true,
	autocomplete = true,
	debug = false,
	min_length = 1,
	preselect = "enable",
	throttle_time = 80,
	source_timeout = 200,
	resolve_timeout = 800,
	incomplete_delay = 400,
	max_abbr_width = 100,
	max_kind_width = 100,
	max_menu_width = 100,
	documentation = {
		border = {"", "" ,"", " ", "", "", "", " "}, -- the border option is the same as `|help nvim_open_win|`
		winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
		max_width = 120,
		min_width = 60,
		max_height = math.floor(vim.o.lines * 0.3),
		min_height = 1,
	},
	source = {
		path = true,
		buffer = true,
		calc = true,
		nvim_lsp = true,
		nvim_lua = true,
		-- vsnip = true,
		-- ultisnips = true,
		-- luasnip = true,
	},
})

require("symbols-outline").setup({})