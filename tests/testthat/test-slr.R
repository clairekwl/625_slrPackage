data(mtcars)

res1 <- slr_output(mtcars$disp, mtcars$wt)
res2 <- summary(lm(wt ~ disp, data = mtcars))
# store estimates from slr_output() into a vector
vec1 <- res1$Estimate
# store estimates from summary(lm()) into a vector
vec2 <- c(res2$coefficients[1, 1],
          res2$coefficients[2, 1],
          res2$coefficients[2, 2],
          as.data.frame(res2$fstatistic[1])[1, 1],
          as.data.frame(pf(res2$fstatistic[1], res2$fstatistic[2],
                           res2$fstatistic[3], lower.tail = FALSE))[1,1],
          res2$coefficients[2, 3],
          res2$coefficients[2, 4])

test_that("slr_output works", {
  expect_equal(vec1, vec2)
})
