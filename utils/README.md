## Examples
### convert.py
```bash
~/selenized.nvim $ ./utils/convert.py - <<EOF
Color        CIE L*a*b*   HSB           sRGB      AppleRGB
----------   ----------   -----------   -------   --------
bg_0         23 -12 -12   193  77  28   #103c48   #112e38
bg_1         28 -13 -13   193  72  34   #184956   #163945
bg_2         36 -13 -13   194  57  41   #2d5b69   #254a57
dim_0        56  -8  -6   191  20  56   #72898f   #61777c
fg_0         75  -5  -2   182   8  74   #adbcbc   #9faeae
fg_1         85  -5  -2   182   7  85   #cad8d9   #bfd0d0

red          60  63  40     2  68  98   #fa5750   #f13c3e
green        69 -38  55    92  70  73   #75b938   #69ad21
yellow       75   6  68    46  79  86   #dbb32d   #d1a416
blue         60   0 -57   213  72  97   #4695f7   #3a82f8
magenta      66  55 -15   325  52  95   #f275be   #e75bb3
cyan         73 -40  -4   174  67  78   #41c7b9   #42bdaa
orange       67  37  50    22  69  93   #ed8649   #e26f35
violet       64  30 -45   263  42  92   #af88eb   #9b72e9

br_red       66  63  40     3  65 100   #ff665c   #ff4b49
br_green     74 -38  55    92  65  78   #84c747   #78be2e
br_yellow    80   6  68    46  74  92   #ebc13d   #e4b424
br_blue      66   0 -57   214  66 100   #58a3ff   #4a91ff
br_magenta   72  55 -15   325  49 100   #ff84cd   #fb69c4
br_cyan      78 -40  -4   173  61  84   #53d6c7   #50cfba
br_orange    72  37  50    22  66  99   #fd9456   #f67e41
br_violet    69  30 -45   263  40  98   #bd96fa   #ab80fc
EOF
```
