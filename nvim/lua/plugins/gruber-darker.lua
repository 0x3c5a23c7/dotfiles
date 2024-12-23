return {
    "blazkowolf/gruber-darker.nvim",
    opts = {
        bold = false,
        italic = {
            strings = false,
            comments = false,
        },
    },
    config = function ()
        require("gruber-darker").setup({
            bold = false,
            italic = {
                strings = false,
                comments = false,
            },
        })
        vim.cmd.colorscheme("gruber-darker")
        vim.cmd [[highlight Normal guibg=#171717]]
        vim.cmd [[highlight keyword guifg=#b2b2b2]]
        vim.cmd [[highlight String guifg=#588157]]
    end
}
