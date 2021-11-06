# CAMERA CALIBRATION BOARD

Camera calibration boards for calculating intrinsic parameters.


## USAGE

```bash
make chess   # chessboard
make circle  # symmetric circles
make asym    # asymmetric circles
```


## REQUIREMENTS

Requires `LaTeX`, `TikZ`.

Optionally use `Make`, `latexmk`.


## DESIGN

I wanted boards with arbitrary dimensions so I chose TikZ.


## TODO

[x] add circle grid

[x] add chessboard

[x] add asymmetric circles

[ ] add siemens star

[ ] add mini png samples to README

[ ] refactor w/ a class

[ ] refactor spacing, infer best grid size & center

[ ] add `crop` package to show trim lines

[ ] add reference line (1cm / 1 inch) for verifying print scaling

[ ] add samples for A4 / letter paper
