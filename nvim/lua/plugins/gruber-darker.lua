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
            bold = true,
            italic = {
                strings = false,
                comments = false,
            },
        })
        vim.cmd.colorscheme("gruber-darker")
        vim.cmd [[highlight keyword guifg=#b2b2b2]]
        vim.cmd [[highlight function guifg=#ffffff]]
    end
}
