return {
  dir = "~/projects/plantuml.nvim",
  name = "plantuml",
  config = function()
    require("plantuml").setup({
      output = { format = "png", float = false },
      cmd = {
        exec = "java -jar /usr/local/puml/plantuml.jar",
        debounce_ms = 2500,
        temp_dir = "/tmp/nvim-puml"
      }
    })
  end
}
