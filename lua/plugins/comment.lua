return {
    'numToStr/Comment.nvim',
    -- event = "VeryLazy",
    keys = {
        -- Normal mode
        { "gcc", mode = "n", desc = "Toggle line comment" },
        { "gc",  mode = { "n", "v" }, desc = "Toggle comment" },
        { "gb",  mode = { "n", "v" }, desc = "Toggle block comment" },
    },
    opts = {
        -- add any options here
    },
    config = function()
        require('Comment').setup()
    end,
}

