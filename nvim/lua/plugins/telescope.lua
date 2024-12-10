return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup {
            defaults = {
                borderchars = {
                    prompt = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
                    results = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
                    preview = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
                },
                layout_config = {
                    horizontal = {
                        prompt_position = "bottom",
                        preview_width = 0.6,
                        width = 0.8,
                        height = 0.8,
                    },
                },
            }
        }

        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<C-l>', builtin.find_files, {})
        vim.keymap.set('n', '<C-g>', function()
            builtin.find_files({ cwd = '~/wiki' })
        end)
    end
}
