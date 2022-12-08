local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
    local config = require("onedarkpro.config").config

    return {
        TelescopeSelection = {
            bg = config.options.cursorline and theme.generated.cursorline or theme.palette.bg,
            fg = theme.palette.purple,
        },
        TelescopeSelectionCaret = { fg = theme.palette.purple },
        TelescopeMultiSelection = {
            bg = config.options.cursorline and theme.generated.cursorline or theme.palette.bg,
            fg = theme.palette.gray,
        },
        TelescopeNormal = {
            bg = config.options.transparency and "NONE" or theme.generated.float_bg,
            fg = theme.palette.fg,
        },
        TelescopeBorder = {
            bg = config.options.transparency and "NONE" or theme.generated.float_bg,
            fg = theme.palette.gray,
        },
        TelescopePromptBorder = { link = "TelescopeBorder" },
        TelescopePreviewBorder = { link = "TelescopeBorder" },
        TelescopeMatching = { fg = theme.palette.green },
        TelescopePromptPrefix = { fg = theme.palette.purple },
        TelescopePrompt = { link = "TelescopeNormal" },
    }
end

return M
