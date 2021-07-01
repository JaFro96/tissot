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
  coords = as.matrix(expand.grid(lon = seq(-160,160,80), lat = seq(-80,80,40)))
  # transform to sf object
  mp = sf::st_multipoint(coords)
  # buffer to equally sized circles
  circles = sf::st_sfc(sf::st_buffer(mp,radius))
  return(circles)
}
