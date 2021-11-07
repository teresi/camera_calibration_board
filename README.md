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

Requires `LaTeX`, `TikZ`.

Optionally use `Make`, `latexmk`.


## DESIGN

I wanted boards with configurable sizes.

I chose TikZ because it supports physical dimensions and vector graphics, and PDFs can be printed easily.

I was most interested in calculating intrinsic parameters so I added the most common targets.


## TODO

[x] add circle grid

[x] add chessboard

[x] add asymmetric circles

[x] add siemens star

[ ] add mini png samples to README

[ ] refactor w/ a class

[ ] refactor spacing, infer best grid size & center

[ ] add `crop` package to show trim lines

[ ] add reference line (1cm / 1 inch) for verifying print scaling

[ ] add reference siemens star to other types of charts

[ ] add samples for A4 / letter paper
