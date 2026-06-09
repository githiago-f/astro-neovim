local scripts_path = vim.fn.environ()['HOME'] .. "/.config/nvim/scripts"

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>puml"] = { ":PlantumlPreviewToggle<cr>", desc = "View plantuml" },
          ["<Leader>lH"] = { ":split term://bash " .. scripts_path .. "/cht.sh<cr>", desc = "Search for..." },
          ["<Leader>tr"] = { desc = "Terminal run..." },
        },
      },
    },
  },
}
