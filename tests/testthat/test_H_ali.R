context("Albedo daily insolation on an inclined surface")
source("utils.R")

# Disable warnings.
Sys.setenv(NET_FLUX_FUNCTION_SHOW_WARNINGS = FALSE)

test_that("H_ali: Albedo daily insolation on an inclined surface for beta = phi at VL1.", {

  # Tolerance.
  tolerance = 0.03

  Ls_seq = seq(0, 360, 5)

  # Expect equals all calculations against all expected.
  test_daily_insolation_on_inclined_surface(
    spacecraft = "VL1",
    field = "Hal",
    tolerance = tolerance,
    Ls_seq = Ls_seq,
    beta_equals_phi = TRUE,
    verbose = FALSE)

})

test_that("H_ali: Albedo daily insolation on an optimal inclined angle beta = 6.5 at VL1.", {
  
  # Tolerance.
  tolerance = 0.08
  
  # Test input parameters.
  Ls_seq = seq(0, 355, 5) # Areocentric longitude.
  
  # Expect equals all calculations against all expected.
  test_daily_insolation_on_inclined_surface(
    spacecraft = "VL1",
    field = "Hal",
    tolerance = tolerance,
    Ls_seq = Ls_seq,
    beta_equals_phi = FALSE,
    verbose = FALSE)
  
})

# FIXME: Large tolerance.
test_that("H_ali: Albedo daily insolation on an inclined surface for beta = phi at VL2.", {

  # Tolerance.
  tolerance = 0.12

  # Test input parameters.
  Ls_seq = seq(0, 360, 5)

  # Expect equals all calculations against all expected.
  test_daily_insolation_on_inclined_surface(
    spacecraft = "VL2",
    field = "Hal",
    tolerance = tolerance,
    Ls_seq = Ls_seq,
    beta_equals_phi = TRUE,
    verbose = FALSE)
})

test_that("H_ali: Albedo daily insolation on an optimal inclined angle beta = 22 at VL2.", {

  # Tolerance.
  tolerance = 0.09
  
  # Test input parameters.
  Ls_seq = seq(0, 355, 5) # Areocentric longitude.
  
  # Expect equals all calculations against all expected.
  test_daily_insolation_on_inclined_surface(
    spacecraft = "VL2",
    field = "Hal",
    tolerance = tolerance,
    Ls_seq = Ls_seq,
    beta_equals_phi = FALSE,
    verbose = FALSE)
})


