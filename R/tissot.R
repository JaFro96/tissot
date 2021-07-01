#' Tissot
#'
#' creates a geometry with equally sized circles (e.g. with 400 km radius) located on a regular grid in longitude / latitude
#'
#' @param radius double
#'
#' @return list
#' @export
#'
#' @examples
#' tissot(2)
tissot <- function(radius){
  # create grid
  coords = as.matrix(expand.grid(lon = seq(-180,180,90), lat = seq(-90,90,45)))
  # transform to sf object
  mp = st_multipoint(coords)
  # buffer to equally sized circles
  circles = st_buffer(mp,radius)
  return(circles)
}
