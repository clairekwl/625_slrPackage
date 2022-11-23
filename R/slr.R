#' Simple Linear Regression
#'
#' @description Used to carry out simple linear regression.
#'
#' @param x The predictor variable.
#' @param y The outcome variable.
#'
#' @return The intercept and slope estimates, standard error, f and t statistics and p-values.
#' @export
#'
#' @examples
#' data(mtcars)
#' slr_output(mtcars$disp, mtcars$wt)

slr_output <- function(x, y) {
  n = length(x)

  # b1 estimate
  x_i = x
  x_bar = mean(x_i)
  y_i = y
  y_bar = mean(y_i)
  ssxy = sum((x_i - x_bar) * (y_i - y_bar))
  ssx = sum((x_i - x_bar)^2)
  b1_hat = ssxy / ssx

  # b0 estimate
  b0_hat = y_bar - b1_hat*x_bar

  # f stat
  y_hat = b0_hat + b1_hat*x_i
  sse = sum((y_i - y_hat)^2)
  ssr = sum((y_hat - y_bar)^2)
  mse = sse / (n-2)
  msr = ssr / 1
  f_stat = msr / mse
  # f stat p value
  f_pval = 1 - pf(q = f_stat, df1 = 1, df2 = n-2)

  # standard error of b1_hat
  sigma_squared = mse
  var_b1_hat = sigma_squared / ssx
  se_b1_hat = sqrt(var_b1_hat)

  # t stat
  t_stat = b1_hat / se_b1_hat
  # t stat p-value
  t_pval = 2*(1 - pt(q = t_stat, df = n-2))

  # generate output table
  Name <- c("Beta 0", "Beta 1", "Std Error (Beta 1)", "F Stat",
            "P-Value (F)", "T Stat (Beta 1)", "P-Value (T)")
  Estimate <- c(b0_hat, b1_hat, se_b1_hat, f_stat, f_pval, t_stat, t_pval)
  output <- data.frame(Name, Estimate)

  return(output)
}
