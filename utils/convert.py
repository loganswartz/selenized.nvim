#!/usr/bin/env python3

# Imports {{{
# builtins
import colorsys
import sys

# 3rd party
import click

# }}}


def hsv_to_hsl(hsv):
    h, s, v = hsv
    r, g, b = colorsys.hsv_to_rgb(h / 360, s / 100, v / 100)
    h, l, s = colorsys.rgb_to_hls(r, g, b)
    return h * 360, s * 100, l * 100


@click.command(context_settings={"help_option_names": ["-h", "--help"]})
@click.argument("input", type=click.File("r"))
def cli(input):
    """
    Converts the colors from the main Selenized repo into HSL values for Lush.

    Find the color values here:

        https://github.com/jan-warchol/selenized/blob/master/the-values.md

    The ASCII tables from each section of that README should be fed directly
    into this script, via a file argument (or '-' to use stdin). The script
    will strip out all the non-color lines, grab the HSB (HSV) values, convert
    them to HSL, and then dump them to stdout as a lua snippet.
    """
    colors = {}
    # filter out lines without a '#'
    # (RGB hex values ensure all lines representing colors have a '#')
    lines = [l.strip() for l in input.readlines() if "#" in l]

    for line in lines:
        # HSB and HSV are the same thing
        name, l, a, b, h, s, v, sRGB, aRGB = line.split()
        hsv = [int(val.strip()) for val in [h, s, v]]
        colors[name] = hsv_to_hsl(hsv)

    length = max(len(name) for name in colors.keys())
    print("colors = {")
    for name, hsl in colors.items():
        h, s, l = hsl
        print(f"    {name:{length}} = hsl({h:.0f},{s:.0f},{l:.0f}),")
    print("}")


if __name__ == "__main__":
    cli()
