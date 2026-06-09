-- if true then return {} end

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "python",
      "java",
      "javascript",
      "typescript",
      "zig",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
