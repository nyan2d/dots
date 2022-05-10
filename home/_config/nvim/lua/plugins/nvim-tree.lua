require('nvim-tree').setup{
    auto_reload_on_write = true,
    disable_netrw = true,
    hijack_cursor = true,
    git = {
        enable = false,
    },
    open_file = {
        resize_window = true, -- not working
    },
}
