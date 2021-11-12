if !exists('g:loaded_nvim_treesitter')
    finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  -- ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {  }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    use_languagetree = true,
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true
  },
  indent = {enable = true},
  rainbow = {
    enable = false,
    extended_mode = true,
    max_file_lines = 1000
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    }
  }
}
EOF

