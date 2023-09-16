return {
    {
        "rcarriga/nvim-notify",
        config = function(plugin, opts)
            -- run the core AstroNvim configuration function with the options table
            require("plugins.configs.notify")(plugin, opts)

            -- require telescope and load extensions as necessary
            require('notify').setup({
                -- other stuff
                background_colour = "#000000"
            })
        end,
    },
}
