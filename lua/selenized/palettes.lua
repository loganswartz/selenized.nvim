local hsl = require("lush.hsl")

local palettes = {
    normal = {
        dark = {
            bg_0       = hsl(193,63,17),
            bg_1       = hsl(193,56,22),
            bg_2       = hsl(194,40,29),
            dim_0      = hsl(191,11,50),
            fg_0       = hsl(182,10,71),
            fg_1       = hsl(182,17,82),
            red        = hsl(2,94,65),
            green      = hsl(92,54,47),
            yellow     = hsl(46,71,52),
            blue       = hsl(213,92,62),
            magenta    = hsl(325,83,70),
            cyan       = hsl(174,54,52),
            orange     = hsl(22,82,61),
            violet     = hsl(263,71,73),
            br_red     = hsl(3,100,68),
            br_green   = hsl(92,54,53),
            br_yellow  = hsl(46,81,58),
            br_blue    = hsl(214,100,67),
            br_magenta = hsl(325,100,76),
            br_cyan    = hsl(173,62,58),
            br_orange  = hsl(22,97,66),
            br_violet  = hsl(263,91,78),
        },
        light = {
            bg_0       = hsl(44,87,93),
            bg_1       = hsl(45,43,86),
            bg_2       = hsl(45,27,77),
            dim_0      = hsl(155,4,58),
            fg_0       = hsl(195,14,38),
            fg_1       = hsl(195,18,28),
            red        = hsl(356,72,48),
            green      = hsl(90,100,28),
            yellow     = hsl(47,100,34),
            blue       = hsl(208,100,42),
            magenta    = hsl(323,55,54),
            cyan       = hsl(175,100,30),
            orange     = hsl(23,72,44),
            violet     = hsl(262,47,58),
            br_red     = hsl(354,80,44),
            br_green   = hsl(92,100,28),
            br_yellow  = hsl(47,100,33),
            br_blue    = hsl(208,100,40),
            br_magenta = hsl(323,52,52),
            br_cyan    = hsl(175,100,30),
            br_orange  = hsl(23,77,42),
            br_violet  = hsl(262,43,56),
        },
    },
    bw = {
        dark = {
            bg_0       = hsl(0,0,9),
            bg_1       = hsl(0,0,15),
            bg_2       = hsl(0,0,23),
            dim_0      = hsl(0,0,47),
            fg_0       = hsl(0,0,72),
            fg_1       = hsl(0,0,87),
            red        = hsl(1,82,60),
            green      = hsl(92,56,45),
            yellow     = hsl(46,71,52),
            blue       = hsl(212,82,57),
            magenta    = hsl(325,75,68),
            cyan       = hsl(174,53,51),
            orange     = hsl(22,76,58),
            violet     = hsl(263,61,69),
            br_red     = hsl(3,100,66),
            br_green   = hsl(92,54,53),
            br_yellow  = hsl(45,85,60),
            br_blue    = hsl(214,100,66),
            br_magenta = hsl(325,100,76),
            br_cyan    = hsl(173,63,60),
            br_orange  = hsl(22,94,65),
            br_violet  = hsl(263,83,76),
        },
        light = {
            bg_0       = hsl(0,0,100),
            bg_1       = hsl(0,0,92),
            bg_2       = hsl(0,0,80),
            dim_0      = hsl(0,0,53),
            fg_0       = hsl(0,0,28),
            fg_1       = hsl(0,0,16),
            red        = hsl(357,100,42),
            green      = hsl(108,100,30),
            yellow     = hsl(46,100,38),
            blue       = hsl(214,100,44),
            magenta    = hsl(318,87,47),
            cyan       = hsl(174,100,34),
            orange     = hsl(21,100,41),
            violet     = hsl(261,62,58),
            br_red     = hsl(0,100,38),
            br_green   = hsl(120,100,26),
            br_yellow  = hsl(46,100,34),
            br_blue    = hsl(216,100,40),
            br_magenta = hsl(318,100,39),
            br_cyan    = hsl(174,100,30),
            br_orange  = hsl(18,100,36),
            br_violet  = hsl(260,51,51),
        },
    },
}

return palettes
