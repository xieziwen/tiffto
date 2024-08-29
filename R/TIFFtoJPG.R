#' TIFFtoJPG

#' @param input_raster The input raster format image needed to be conversed.
#' @examples
#' # TIFFtoJPG(tiff_img)
#' @encoding UTF-8
#' @export

TIFFtoJPG <- function(input_raster){
  input_img <- brick(input_raster)

  rgb <- raster::as.array(input_img)
  if (max(rgb, na.rm = TRUE) > 255) {
    stop('Need to check for non-8-bit image')
  }

  rgb <- rgb / 255
  pix_NA <- length(rgb[is.na(rgb)])
  rgb[is.na(rgb)] <- 0
  rgbbb <- rgbImage(red = rgb[ , , 1], green = rgb[ , , 2], blue = rgb[ , , 3])

  file_name <- substr(as.character(input_raster), floder_nl+1, nchar(as.character(input_raster))-4)
  file_name <- as.character(file_name)

  jpeg::writeJPEG(rgb, paste0(output_dir, "/", file_name, ".jpg"))
}
