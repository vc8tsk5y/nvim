return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        -- 'echasnovski/mini.icons',
    },
    config = function()
        require('lualine').setup {
            options = {
                -- theme = 'gruvbox-material',
                component_separators = { left = '|', right = '|' },
                section_separators = { left = '', right = '' },
            }
        }
    end,
}
