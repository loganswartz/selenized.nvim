local palettes = require("selenized.palettes")

local detect_options = function()
    -- get variant
    local variant = vim.g.selenized_variant
    if not variant and variant ~= 'normal' and variant ~= 'bw' then
        variant = 'normal'
    end

    -- get bg color
    local bg = vim.o.background or 'dark'

    return { variant = variant, bg = bg }
end

local get_palette = function()
    local options = detect_options()
    return palettes[options.variant][options.bg]
end

return { get_palette = get_palette, detect_options = detect_options }
