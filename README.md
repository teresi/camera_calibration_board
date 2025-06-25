# CAMERA CALIBRATION BOARD

Camera calibration boards for calculating intrinsic parameters and etc.


## USAGE

```bash
make chess    # chessboard
make circle   # symmetric circles
make asym     # asymmetric circles
make siemens  # siemens star
```


## REQUIREMENTS

- `make`     (apt install make)
- `TeX Live` ([TeX Live - install](https://www.tug.org/texlive/quickinstall.html))
- `pgf`      (tlmgr install pgf)
- `latexmk`  (tlmgr install latexmk
- `pdf2svg`  (apt install pdf2svg)



## DESIGN

I need boards that:
- can be etched into metal so it works with thermal cameras
- can be used for intrinsic calibration and focus
- can be recomiled for various sizes


## TODO

[x] add circle grid
[x] add chessboard
[x] add asymmetric circles
[x] add siemens star
[ ] add mini png samples to README
[ ] add reference line (1cm / 1 inch) for verifying print scaling
[ ] fix issue where Glowforge2 can't interpret the Siemens Star lines
