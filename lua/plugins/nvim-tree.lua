return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      update_focused_file = {
        enable = true,
      },
      filters = {
        git_ignored = false,
      },
      view = {
        width = 40,
        adaptive_size = true,
      },
      renderer = {
        icons = {
          glyphs = {
            default = "󰈚",
            symlink = "",
            folder = {
              default = "",
              empty = "",
              empty_open = "",
              open = "",
              symlink = "",
              symlink_open = "",
              arrow_open = "",
              arrow_closed = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
    })
  end,
  keys = {
    { "<leader>e", "<cmd> NvimTreeFocus <CR>", desc = "Focus nvimtree" },
    { "<leader>n", "<cmd> NvimTreeToggle <CR>", desc = "Toggle nvimtree" },
  },
}
