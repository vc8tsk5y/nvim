return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = {
            sections = {
                { section = "keys", gap = 1, padding = 1 },
                { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                -- { pane = 2, icon = " ", title = "Sessions", section = "session", indent = 2, padding = 1 },
                {
                    pane = 2,
                    icon = " ",
                    title = "Git Status",
                    section = "terminal",
                    enabled = function()
                        return Snacks.git.get_root() ~= nil
                    end,
                    cmd = "git status --short --branch --renames",
                    height = 5,
                    padding = 1,
                    ttl = 5 * 60,
                    indent = 3,
                },
                { section = "startup" },
            },
        },
        indent = { enabled = true },
        input = { enabled = true },
        notifier = {
            enabled = true,
            timeout = 3000,
        },
        quickfile = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
    },
    keys = {
        -- { "<leader>s.", function() Snacks.scratch() end,                 desc = "Toggle Scratch Buffer" },
        -- { "<leader>ss", function() Snacks.scratch.select() end,          desc = "Select Scratch Buffer" },
        { "<leader>sh", function() Snacks.notifier.show_history() end,   desc = "Notification History" },
        { "<leader>sn", function() Snacks.notifier.hide() end,           desc = "Dismiss All Notifications" },
        { "<leader>sd", function() Snacks.bufdelete() end,               desc = "Delete Buffer" },
        { "<leader>sr", function() Snacks.rename.rename_file() end,      desc = "Rename File" },
        { "<leader>gb", function() Snacks.git.blame_line() end,          desc = "Git Blame Line" },
        { "<leader>gf", function() Snacks.lazygit.log_file() end,        desc = "Lazygit Current File History" },
        { "<leader>gg", function() Snacks.lazygit() end,                 desc = "Lazygit" },
        { "<leader>gl", function() Snacks.lazygit.log() end,             desc = "Lazygit Log (cwd)" },
        { "<c-/>",      function() Snacks.terminal() end,                desc = "Toggle Terminal",             mode = { "n", "t" } },
        { "]]",         function() Snacks.words.jump(vim.v.count1) end,  desc = "Next Reference",              mode = { "n", "t" } },
        { "[[",         function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference",              mode = { "n", "t" } },
    },
}
