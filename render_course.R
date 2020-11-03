# Render course rmd
rm(list = ls())


# NOT RUN {
library(rmarkdown)
library(stringr)

RenderOutput <- function(path, format_type = 1) {
  
  if(format_type == 1) { format = "html_document";         suffix = "_handout.html"  }
  if(format_type == 2) { format = "revealjs::revealjs_presentation"; suffix = "_reveal.html" }
  
  file = str_extract(path, "\\w+.Rmd$")
    
  # render the default (first) format defined in the file "html_document"
  
  rmarkdown::render(input         = path, 
                    output_format = format,
                    output_file   = gsub("....$", suffix, file)
  ) 
}

RenderMultipleOutput <- function(path) {
  
  RenderOutput(path, 1)
  RenderOutput(path, 2)
  
}

# Blok I

# Week 1

# WSR
RenderMultipleOutput("courses/2020-2021_WSR_PB/reasoning_nhst/reasoning_empirical_cycle_nhst.Rmd")

# SSR
RenderMultipleOutput("courses/2020-2021_SSR/reasoning_nhst/reasoning_empirical_cycle_nhst.Rmd")


# # Week 2

# WSR
RenderMultipleOutput("courses/2020-2021_WSR_PB/nhst/nhst.Rmd")
# SSR
RenderMultipleOutput("courses/2020-2021_SSR/nhst/nhst.Rmd")


# Week 3

# WSR
RenderMultipleOutput("courses/2020-2021_WSR_PB/multiple_regression/multiple_regresson.Rmd")

# SSR
RenderMultipleOutput("courses/2020-2021_SSR/t_distribution_and_one_sample_t_test/t_distribution_and_one_sample_t_test.Rmd")
RenderMultipleOutput("courses/2020-2021_SSR/paired_and_independent_t_test/paired_and_independent_t_test.Rmd")

# Week 4

# WSR
RenderMultipleOutput("courses/2020-2021_WSR_PB/moderation/moderation.Rmd")

# Blok II

# Week 5
RenderMultipleOutput("courses/2020-2021_SSR/f_distribution_ANOVA_one_way_independent/f_distribution_ANOVA_one_way_independent.Rmd")
RenderMultipleOutput("courses/2020-2021_SSR/non_parametric_tests/non_parametric_tests.Rmd")

# WSR
RenderMultipleOutput("courses/2020-2021_WSR_PB/f_distribution_ANOVA_non_par_testing/f_distribution_ANOVA_non_par_testing.Rmd")

# 
# # Week 6

# SSR
RenderMultipleOutput("courses/2020-2021_SSR/ANCOVA/ANCOVA.Rmd")
RenderMultipleOutput("courses/2020-2021_SSR/ANOVA_independent_factorial/ANOVA_independent_factorial.Rmd")

# WSR 
RenderMultipleOutput("courses/2020-2021_WSR_PB/ANOVA_independent_factorial_repeated_mixed/ANOVA_independent_factorial.Rmd")

# Week 7

# WSR
RenderMultipleOutput("courses/2020-2021_WSR_PB/bayes/bayes.Rmd")

# SSR
RenderMultipleOutput("courses/2020-2021_SSR/ANOVA_repeated_mixed/ANOVA_repeated_and_mixed.Rmd")
RenderMultipleOutput("courses/2020-2021_SSR/chi_squared_test/chi_squared_test.Rmd")
RenderMultipleOutput("courses/2020-2021_SSR/bayes/bayes.Rmd")


# Blok III

## SSR

# Week 9
RenderMultipleOutput("courses/2020-2021_SSR/correlation_and_simple_regression/correlation_simple_regression.Rmd")

# Week 10
RenderMultipleOutput("courses/2020-2021_SSR/multiple_regression/multiple_regresson.Rmd")

# Week 12
# RenderMultipleOutput("courses/current/multiple_regression/multiple_regresson.Rmd")
# # RenderMultipleOutput("courses/current/pca_cb_alpha/pca_cb_alpha.Rmd")
# 
# # Week 13
# RenderMultipleOutput("courses/current/mediation/mediation.Rmd")
# RenderMultipleOutput("courses/current/moderation/moderation.Rmd")
# 
# # Blok IV
# 
# # Week 15
# RenderMultipleOutput("courses/current/non_parametric_tests/non_parametric_tests.Rmd")
# 
# # Block V
# 
# # Week 16
# RenderMultipleOutput("courses/current/test_utility/test_utility.Rmd")
# RenderMultipleOutput("courses/current/pca_cb_alpha/pca_cb_alpha.Rmd")
# 
