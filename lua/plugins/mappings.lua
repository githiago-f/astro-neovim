local scr = "~/.config/nvim/scripts"

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>lH"] = { ":split term://bash " .. scr .. "/cht.sh<cr>", desc = "Search for..." },
          ["<Leader>tr"] = { desc = "Terminal run..." },
          ["<Leader>trj"] = { ":split term://bash npx jest<cr>", desc = "Jest tests" },
          ["<Leader>trs"] = {
            ":split term://bash " .. scr .. "/serverless.sh<cr>",
            desc = "Run serverless (only supports deploy)",
          },
          ["<Leader>java"] = {
            ":split term://bash " .. scr .. "/jav-run.sh<cr>",
            desc = "Run java",
          },
          ["<Leader>m"] = {
            ":split term://bash " .. scr .. "/jav.sh<cr>",
            desc = "Maven CLI",
          },
        },
      },
    },
  },
}
