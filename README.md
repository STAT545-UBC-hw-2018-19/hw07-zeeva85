
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Build Status](https://travis-ci.org/vincenzocoia/powers.svg?branch=master)](https://travis-ci.org/vincenzocoia/powers)

**Note**: This R package is not mean to be "serious". It's just to show you are kinda cool and you can develop simple packages :cool:.

gapminderplus
=============

This is an R package that has extended the gapminder dataset. This package also has included a simple `subset_country()` function which returns the mini dataset that was required for as many countries possible.

Installation
------------

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("STAT545-UBC-students/hw07-zeeva85/gapminderplus")
```

Example
-------

See the vignette for more extensive use, but here's an example:

``` r
# Enter empty value to end prompt
gapminderplus::subset_country()

## Console view

# 1: Malaysia
# 2: 
# Read 1 item
  
```

For Developers
--------------

(Again, I don't actually intend for anyone to develop this silly and cool package, but if I did, here's what I'd write.)

Develop the subset function to accept values within its function and console. Add additional dataset available in the `data-raw` folder to the `gapminder2` dataset.
