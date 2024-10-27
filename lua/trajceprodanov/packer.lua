--) This) file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("github/copilot.vim")
	use("wbthomason/packer.nvim")
	use("lewis6991/gitsigns.nvim")
	use("EmranMR/tree-sitter-blade")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		requires = { {
			"nvim-lua/plenary.nvim",
		} },
	})
	-- use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
	-- use({ 'rebelot/kanagawa.nvim', as = 'kanagawa',

	-- colors
	use("shaunsingh/nord.nvim")
	use({ "rose-pine/neovim", as = "rose-pine" })
	use("0xstepit/flow.nvim")
	use("rebelot/kanagawa.nvim")

	use("mfussenegger/nvim-lint")
	use("stevearc/conform.nvim")

	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance

	use({
		"Wansmer/treesj",
		requires = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("treesj").setup({--[[ your config ]]
			})
		end,
	})

	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" }) -- fold

	use("christoomey/vim-tmux-navigator") -- tmux & split window navigator
	use({
		"kmontocam/nvim-conda",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use("BurntSushi/ripgrep") -- ripgrep

	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})

	use("nvim-lua/plenary.nvim") -- don't forget to add this one if you don't have it yet!
	use({
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("mg979/vim-visual-multi")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("neovim/nvim-lspconfig")
	use("MunifTanjim/prettier.nvim")
	use("nvim-tree/nvim-web-devicons")
	-- lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use("nvim-treesitter/nvim-treesitter-context")
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
			{
				"s1n7ax/nvim-window-picker",
				version = "2.*",
				config = function()
					require("window-picker").setup({
						filter_rules = {
							include_current_win = false,
							autoselect_one = true,
							-- filter using buffer options
							bo = {
								-- if the file type is one of following, the window will be ignored
								filetype = { "neo-tree", "neo-tree-popup", "notify" },
								-- if the buffer type is one of following, the window will be ignored
								buftype = { "terminal", "quickfix" },
							},
						},
					})
				end,
			},
		},
	})
end)
