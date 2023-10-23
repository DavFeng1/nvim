local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
    ensure_installed = {
      "lua",
      "python",
      "typescript",
      "javascript",
      "rust",
      "gitcommit",
      "gitignore",
      "git_rebase",
      "git_config",
      "markdown",
      "markdown_inline",
      "json"
    },
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = { "all" }, -- List of parsers to ignore installing
    autopairs = {
        enable = true,
    },
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "latex" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = false,
    },
      indent = {
        enable = true,
    },
     context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
    playground = {
        enable = true
    }
}

