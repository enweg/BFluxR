
testthat::test_that("Gaussian Prior", {
  BFluxR_setup(env_path = "/tmp/", nthreads = 3, pkg_check = FALSE)

  ch = Chain(Dense(1, 1))
  gp = prior.gaussian(ch, 3.0)
  num_params_hyper <- JuliaCall::julia_eval(sprintf("%s.num_params_hyper", gp$juliavar))
  expect_equal(num_params_hyper, 0, tolerance = 1e-4)
})

testthat::test_that("MixtureScale Prior", {
  BFluxR_setup(env_path = "/tmp/", nthreads = 3, pkg_check = FALSE)

  ch = Chain(Dense(1, 1))
  gp = prior.mixturescale(ch, 1.0, 0.1, 0.9)
  num_params_hyper <- JuliaCall::julia_eval(sprintf("%s.π1", gp$juliavar))
  expect_equal(num_params_hyper, 0.9, tolerance = 1e-4)
})

