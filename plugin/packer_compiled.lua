-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/trajceprodanov/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?.lua;/Users/trajceprodanov/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?/init.lua;/Users/trajceprodanov/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?.lua;/Users/trajceprodanov/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/trajceprodanov/.cache/nvim/packer_hererocks/2.1.1700008891/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  kanagawa = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme kanagawa\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/kanagawa",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nT\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0015\3\3\0B\1\2\1K\0\1\0\1\0\1\vaction\nclose\fexecute\21neo-tree.command\frequire� \1\0\b\0z\0�\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0005\3\15\0=\3\16\0024\3\3\0005\4\17\0003\5\18\0=\5\19\4>\4\1\3=\3\20\0025\3\22\0005\4\21\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4!\0005\5 \0=\5\"\4=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0035\4,\0=\4-\3=\3.\0024\3\0\0=\3/\0025\0030\0005\0041\0=\0042\0035\0044\0005\0053\0=\0055\0045\0056\0005\0067\0=\0068\5=\0059\0045\5:\0005\6;\0=\0068\5=\5<\4=\4=\3=\3>\0024\3\0\0=\3?\0025\3F\0005\4@\0004\5\0\0=\5A\0044\5\0\0=\5B\0044\5\0\0=\5C\0044\5\0\0=\5D\0044\5\0\0=\5E\4=\4G\0035\4H\0=\4I\0035\4\\\0005\5J\0005\6K\0005\aL\0=\a8\6=\6M\0055\6N\0=\6O\0055\6P\0=\6Q\0055\6R\0=\6S\0055\6T\0=\6U\0055\6V\0=\6W\0055\6X\0=\6Y\0055\6Z\0=\6[\5=\5=\0045\5]\0=\5^\4=\4>\0034\4\0\0=\4/\3=\3_\0025\3a\0005\4`\0=\4I\0035\4k\0005\5b\0005\6c\0005\ad\0=\a8\6=\6M\0055\6e\0=\6O\0055\6f\0=\6Q\0055\6g\0=\6U\0055\6h\0=\6W\0055\6i\0=\6Y\0055\6j\0=\6[\5=\5=\4=\4>\3=\3l\0025\3w\0005\4m\0005\5n\0005\6o\0005\ap\0=\a8\6=\6M\0055\6q\0=\6O\0055\6r\0=\6Q\0055\6s\0=\6U\0055\6t\0=\6W\0055\6u\0=\6Y\0055\6v\0=\6[\5=\5=\4=\4>\3=\3#\2B\0\2\0016\0\0\0009\0x\0'\2y\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\bcmd\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\1\0\14show_help\vnowait\1\1\0\a\agr\20git_revert_file\agg\24git_commit_and_push\agp\rgit_push\agc\15git_commit\6A\16git_add_all\aga\17git_add_file\agu\21git_unstage_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\1\0\14show_help\vnowait\1\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\2\21group_empty_dirs\2\18show_unloaded\2\1\0\2\fenabled\2\20leave_dirs_open\1\15filesystem\26fuzzy_finder_mappings\1\0\4\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\1\0\0\aot\1\2\1\0\18order_by_type\vnowait\1\aos\1\2\1\0\18order_by_size\vnowait\1\aon\1\2\1\0\18order_by_name\vnowait\1\aom\1\2\1\0\22order_by_modified\vnowait\1\aog\1\2\1\0\24order_by_git_status\vnowait\1\aod\1\2\1\0\25order_by_diagnostics\vnowait\1\aoc\1\2\1\0\21order_by_created\vnowait\1\6o\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\1\0\14show_help\vnowait\1\1\0\n\6f\21filter_on_submit\6D\27fuzzy_finder_directory\a]g\22next_git_modified\a[g\22prev_git_modified\6/\17fuzzy_finder\n<c-x>\17clear_filter\t<bs>\16navigate_up\6.\rset_root\6H\18toggle_hidden\6#\17fuzzy_sorter\24follow_current_file\1\0\2\fenabled\1\20leave_dirs_open\1\19filtered_items\1\0\3\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\2\19use_image_nvim\2\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\24\6S\15open_split\6t\16open_tabnew\6y\22copy_to_clipboard\6c\15close_node\6>\16next_source\6q\17close_window\6<\16prev_source\6R\frefresh\6s\16open_vsplit\n<esc>\vcancel\t<cr>\topen\18<2-LeftMouse>\topen\6m\tmove\6C\tcopy\6p\25paste_from_clipboard\6?\14show_help\6l\18focus_preview\6r\vrename\6i\22show_file_details\6d\vdelete\6A\18add_directory\6x\21cut_to_clipboard\6w\28open_with_window_picker\6z\20close_all_nodes\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\rposition\tleft\nwidth\3(\rcommands\30default_component_configs\19symlink_target\1\0\1\fenabled\1\fcreated\1\0\2\fenabled\2\19required_width\3n\18last_modified\1\0\2\fenabled\2\19required_width\3X\ttype\1\0\2\fenabled\2\19required_width\3z\14file_size\1\0\2\fenabled\2\19required_width\3@\15git_status\fsymbols\1\0\0\1\0\t\fignored\b\runstaged\t󰄱\rmodified\5\14untracked\b\frenamed\t󰁕\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\16folder_open\b\17folder_empty\t󰜌\18folder_closed\b\fdefault\6*\14highlight\20NeoTreeFileIcon\vindent\1\0\t\14highlight\24NeoTreeIndentMarker\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\14container\1\0\0\1\0\1\26enable_character_fade\2\19event_handlers\fhandler\0\1\0\1\nevent\16file_opened$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\6\26sort_case_insensitive\1\"enable_normal_mode_for_inputs\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\1\0\2\ttext\t󰌵\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0" },
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\t\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\1\0\0\abo\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\2\19autoselect_one\2\24include_current_win\1\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ripgrep = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  treesj = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vtreesj\frequire\0" },
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/treesj",
    url = "https://github.com/Wansmer/treesj"
  },
  undotree = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/trajceprodanov/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nT\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0015\3\3\0B\1\2\1K\0\1\0\1\0\1\vaction\nclose\fexecute\21neo-tree.command\frequire� \1\0\b\0z\0�\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0005\3\15\0=\3\16\0024\3\3\0005\4\17\0003\5\18\0=\5\19\4>\4\1\3=\3\20\0025\3\22\0005\4\21\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4!\0005\5 \0=\5\"\4=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0035\4,\0=\4-\3=\3.\0024\3\0\0=\3/\0025\0030\0005\0041\0=\0042\0035\0044\0005\0053\0=\0055\0045\0056\0005\0067\0=\0068\5=\0059\0045\5:\0005\6;\0=\0068\5=\5<\4=\4=\3=\3>\0024\3\0\0=\3?\0025\3F\0005\4@\0004\5\0\0=\5A\0044\5\0\0=\5B\0044\5\0\0=\5C\0044\5\0\0=\5D\0044\5\0\0=\5E\4=\4G\0035\4H\0=\4I\0035\4\\\0005\5J\0005\6K\0005\aL\0=\a8\6=\6M\0055\6N\0=\6O\0055\6P\0=\6Q\0055\6R\0=\6S\0055\6T\0=\6U\0055\6V\0=\6W\0055\6X\0=\6Y\0055\6Z\0=\6[\5=\5=\0045\5]\0=\5^\4=\4>\0034\4\0\0=\4/\3=\3_\0025\3a\0005\4`\0=\4I\0035\4k\0005\5b\0005\6c\0005\ad\0=\a8\6=\6M\0055\6e\0=\6O\0055\6f\0=\6Q\0055\6g\0=\6U\0055\6h\0=\6W\0055\6i\0=\6Y\0055\6j\0=\6[\5=\5=\4=\4>\3=\3l\0025\3w\0005\4m\0005\5n\0005\6o\0005\ap\0=\a8\6=\6M\0055\6q\0=\6O\0055\6r\0=\6Q\0055\6s\0=\6U\0055\6t\0=\6W\0055\6u\0=\6Y\0055\6v\0=\6[\5=\5=\4=\4>\3=\3#\2B\0\2\0016\0\0\0009\0x\0'\2y\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\bcmd\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\1\0\14show_help\vnowait\1\1\0\a\agr\20git_revert_file\agg\24git_commit_and_push\agp\rgit_push\agc\15git_commit\6A\16git_add_all\aga\17git_add_file\agu\21git_unstage_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\1\0\14show_help\vnowait\1\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\2\21group_empty_dirs\2\18show_unloaded\2\1\0\2\fenabled\2\20leave_dirs_open\1\15filesystem\26fuzzy_finder_mappings\1\0\4\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\1\0\0\aot\1\2\1\0\18order_by_type\vnowait\1\aos\1\2\1\0\18order_by_size\vnowait\1\aon\1\2\1\0\18order_by_name\vnowait\1\aom\1\2\1\0\22order_by_modified\vnowait\1\aog\1\2\1\0\24order_by_git_status\vnowait\1\aod\1\2\1\0\25order_by_diagnostics\vnowait\1\aoc\1\2\1\0\21order_by_created\vnowait\1\6o\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\1\0\14show_help\vnowait\1\1\0\n\6f\21filter_on_submit\6D\27fuzzy_finder_directory\a]g\22next_git_modified\a[g\22prev_git_modified\6/\17fuzzy_finder\n<c-x>\17clear_filter\t<bs>\16navigate_up\6.\rset_root\6H\18toggle_hidden\6#\17fuzzy_sorter\24follow_current_file\1\0\2\fenabled\1\20leave_dirs_open\1\19filtered_items\1\0\3\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\2\19use_image_nvim\2\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\24\6S\15open_split\6t\16open_tabnew\6y\22copy_to_clipboard\6c\15close_node\6>\16next_source\6q\17close_window\6<\16prev_source\6R\frefresh\6s\16open_vsplit\n<esc>\vcancel\t<cr>\topen\18<2-LeftMouse>\topen\6m\tmove\6C\tcopy\6p\25paste_from_clipboard\6?\14show_help\6l\18focus_preview\6r\vrename\6i\22show_file_details\6d\vdelete\6A\18add_directory\6x\21cut_to_clipboard\6w\28open_with_window_picker\6z\20close_all_nodes\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\rposition\tleft\nwidth\3(\rcommands\30default_component_configs\19symlink_target\1\0\1\fenabled\1\fcreated\1\0\2\fenabled\2\19required_width\3n\18last_modified\1\0\2\fenabled\2\19required_width\3X\ttype\1\0\2\fenabled\2\19required_width\3z\14file_size\1\0\2\fenabled\2\19required_width\3@\15git_status\fsymbols\1\0\0\1\0\t\fignored\b\runstaged\t󰄱\rmodified\5\14untracked\b\frenamed\t󰁕\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\16folder_open\b\17folder_empty\t󰜌\18folder_closed\b\fdefault\6*\14highlight\20NeoTreeFileIcon\vindent\1\0\t\14highlight\24NeoTreeIndentMarker\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\14container\1\0\0\1\0\1\26enable_character_fade\2\19event_handlers\fhandler\0\1\0\1\nevent\16file_opened$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\6\26sort_case_insensitive\1\"enable_normal_mode_for_inputs\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\1\0\2\ttext\t󰌵\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: treesj
time([[Config for treesj]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vtreesj\frequire\0", "config", "treesj")
time([[Config for treesj]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\t\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\1\0\0\abo\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\2\19autoselect_one\2\24include_current_win\1\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: kanagawa
time([[Config for kanagawa]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme kanagawa\bcmd\bvim\0", "config", "kanagawa")
time([[Config for kanagawa]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
