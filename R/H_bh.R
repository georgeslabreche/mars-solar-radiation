# Beam daily insolation on Mars horizontal surface  [Wh/m2-day].
#
# Obtained by integrating Equation 19 (1990), beam hourly insolation on Mars horizontal surface,
# over the period from sunrise to sunset.
#
# Based on equations presented in the following publication:
#   Appelbaum, Joseph & Flood, Dennis. (1990). Solar radiation on Mars. Solar Energy. 45. 353–363. 10.1016/0038-092X(90)90156-7. 
#   https://ntrs.nasa.gov/?R=19890018252
#

#' Title
#'
#' @param Ls 
#' @param phi 
#' @param tau 
#' @param al 
#' @param nfft 
#'
#' @return
#' @export
H_hbh = function(Ls, phi, tau, al=NULL, nfft){
  
  # Hbh is obtained by integrating Ibh over the period from sunrise to sunset.
  Hbh = I_bh(Ls, phi, tau, 0, 24, NULL, nfft)
  
  # Return result.
  return(Hbh)
}