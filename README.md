# tiffto
When processing the remote sensing images of unmanned aerial vehicles or satellites, the grid images in tiff format contain a lot of useful information. However, when only the color information of the image needs to be processed, converting the tiff format raster image into other common format images can reduce the file size and shorten the data processing time. This is beneficial to image data analysis and processing of high-thouput quantity.
At present, this R package supports converting images in `TIFF` format into images in `PNG` and `JPG` formats.
More functions will be developed soon.

## Installation

(1) Install package from github
You can install `tiffto` like so:

``` r
install.packages("devtools")
devtools::install_github("xieziwen/tiffto")
```

(2) Download `tiffto_0.1.0.tar.gz` and install locally

## point out

To use this R package successfully, you need to install `raster` package and `EBImage` package, which are the two most important support packages for successful use.

## Quick demo


