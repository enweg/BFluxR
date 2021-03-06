
testthat::test_that("Bayes by Backprop", {
  BFluxR_setup(env_path = "/tmp/", nthreads = 3, pkg_check = FALSE)

  y <- rnorm(100)
  x <- matrix(rnorm(100), nrow = 1)
  net <- Chain(Dense(1, 1))
  prior <- prior.gaussian(net, 0.5)
  like <- likelihood.feedforward_normal(net, Gamma(2.0, 0.5))
  init <- initialise.allsame(Normal(0, 0.5), like, prior)
  bnn <- BNN(x, y, like, prior, init)


  vi <- bayes_by_backprop(bnn, 10, 100)

  samples <- vi.get_samples(vi, n = 10)
  expect_equal(dim(samples)[1], BNN.totparams(bnn))
  expect_equal(dim(samples)[2], 10)
})

