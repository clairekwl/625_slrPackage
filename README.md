
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
We load the `iris` dataset from R. Suppose we want estimates for the
following SLR model:  
`Sepal.Length_i = Sepal.Width_i + e_i`

``` r
library(slrPackage)
## basic example code

# load sample R dataset
data(iris)
# running function: slr_output(predictor, outcome)
slr_output(iris$Sepal.Width, iris$Sepal.Length)
#>                 Name   Estimate
#> 1             Beta 0  6.5262226
#> 2             Beta 1 -0.2233611
#> 3 Std Error (Beta 1)  0.1550809
#> 4        F Statistic  2.0744269
#> 5        (F) P-Value  0.1518983
#> 6        T Statistic -1.4402871
#> 7        (T) P-Value  1.8481017
```
