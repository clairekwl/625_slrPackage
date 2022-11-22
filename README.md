
<!-- README.md is generated from README.Rmd. Please edit that file -->

# slrPackage

<!-- badges: start -->
<!-- badges: end -->

The goal of slrPackage is to produce the main outputs that one would
obtain by running the `lm` function on a simple linear regression model.
This package contains the single function `slr_output`.

In order to run the function, the user would first input the predictor
variable (x), followed by the outcome variable (y), in the format of
`slr_output(x, y)`.

The slrPackage will then provide the following results:  
1. intercept (beta 0) and slope (beta 1) estimates  
2. standard error of slope (beta 1)  
3. f statistic and p value  
4. t statistic of slope (beta 1) and p value

## Installation

You can install the development version of slrPackage from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("clairekwl/625_slrPackage")
```

## Example

This is a basic example which shows you how to solve a common problem.  
We load the `mtcars` dataset from R. Suppose we want estimates for the
following SLR model:  
`wt_i = disp_i + e_i` or `Weight_i = Displacement_i + e_i`.

``` r
library(slrPackage)
## basic example code

# load sample R dataset
data(mtcars)
# running function: slr_output(predictor, outcome)
slr_output(mtcars$disp, mtcars$wt)
#>                 Name     Estimate
#> 1             Beta 0 1.599815e+00
#> 2             Beta 1 7.010325e-03
#> 3 Std Error (Beta 1) 6.628588e-04
#> 4        F Statistic 1.118496e+02
#> 5        (F) P-Value 1.222322e-11
#> 6        T Statistic 1.057590e+01
#> 7        (T) P-value 1.222311e-11
```
