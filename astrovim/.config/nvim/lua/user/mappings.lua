-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
    -- first key is the mode
    n = {
        -- ["<leader>"] = {},
        ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        ["<leader>bD"] = {
            function()
                require("astronvim.utils.status").heirline.buffer_picker(
                    function(bufnr)
                        require("astronvim.utils.buffer").close(bufnr)
                    end)
            end,
            desc = "Pick to close"
        },
        ["<Tab>"] = { "<cmd>bn<cr>", desc = "Next Tab" },
        ["<S-Tab>"] = { "<cmd>bp<cr>", desc = "Next Tab" }
    },
    t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
    }
}
