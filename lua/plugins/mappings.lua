return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>lH"] = { ":split term://bash ~/.config/nvim/.dotfiles/cht.sh<cr>", desc = "Search for..." },
          ["<Leader>tr"] = { desc = "Terminal run..." },
          ["<Leader>trj"] = { ":split term://bash npx jest<cr>", desc = "Jest tests" },
          ["<Leader>trs"] = {
            ":split term://bash ~/.config/nvim/.dotfiles/serverless.sh<cr>",
            desc = "Run serverless (only supports deploy)",
          },
          ["<Leader>java"] = {
            ":split term://bash ~/.config/nvim/.dotfiles/jav-run.sh<cr>",
            desc = "Run java",
          },
          ["<Leader>m"] = {
            ":split term://bash ~/.config/nvim/.dotfiles/jav.sh<cr>",
            desc = "Maven CLI",
          },
        },
      },
    },
  },
}
