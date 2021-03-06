# Mars obliquity of rotation axis [deg].
delta_0 = 24.936

#' Declination angle: the angular position of the Sun at solar noon with respect to the plane of the equator.
#'
#' For Mars: -24.936° <= delta <= 24.936°.
#' 0 deg at vernal (Ls 0°) and autumnal equinoxes (Ls 180°)
#' +24.936 deg at summer solstice (Ls 90) and -24.936 at at winter solstice (Ls 270°).
#' 
#' Source: Equation 7 (1990)
#' 
#' @param Ls Areocentric longitude [deg].
#' @param unit 
#'
#' @return Declination angle in radians or degrees.
#' @export
declination = function(Ls, unit=1){

  if(!unit %in% c(1, 2)){
    stop("Declination angle unit option must either be 1 for radians or 2 for degrees.")
  }
  
  # For Ls = 180, we get delta = 2.95828423403174e-15 instead of delta = 0.
  # This is a hardcoded fix:
  if(Ls == 180){
    return(0)
  }
  
  # Calculate declination angle in radians and degrees.
  delta_rad = asin(sin(delta_0*pi/180) * sin(Ls*pi/180))
  delta_deg = delta_rad * 180/pi
  
  # # Alternative equation for delta.
  # # Source: https://www.giss.nasa.gov/tools/mars24/help/algorithm.html
  # delta_rad = asin(0.42565 * sin(Ls*pi/180)) + 0.25 * sin(Ls*pi/180)
  
  # Return result.
  if(unit == 1){
    return(delta_rad)
    
  }else if(unit == 2){
    return(delta_deg)
    
  }else{
    # This should not happen.
    stop("An unknown error has occurred.")
  }
}
