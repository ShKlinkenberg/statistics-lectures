# Render course rmd
rm(list = ls())


# NOT RUN {
library(rmarkdown)
library(stringr)

RenderOutput <- function(path, format_type = 1) {
  
  if(format_type == 1) { format = "html_document";         suffix = "_handout.html"  }
  if(format_type == 2) { format = "ioslides_presentation"; suffix = "_IOslides.html" }
  
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
RenderMultipleOutput("courses/current/reasoning_nhst/reasoning_empirical_cycle_nhst.Rmd")
RenderMultipleOutput("courses/current/coin_experiment/coin_experiment.Rmd")

# Week 2
RenderMultipleOutput("courses/current/nhst/nhst.Rmd")

# Week 3
RenderMultipleOutput("courses/current/t_distribution_and_one_sample_t_test/t_distribution_and_one_sample_t_test.Rmd")

# Week 4

RenderMultipleOutput("courses/current/paired_and_independent_t_test/paired_and_independent_t_test.Rmd")
RenderMultipleOutput("courses/current/the_beast_of_bias/the_beast_of_bias.Rmd")

# Blok II

# Week 6
RenderMultipleOutput("courses/current/chi_squared_test/chi_squared_test.Rmd")
RenderMultipleOutput("courses/current/f_distribution_ANOVA_one_way_independent/f_distribution_ANOVA_one_way_independent.Rmd")

# Week 7
RenderMultipleOutput("courses/current/ANCOVA/ANCOVA.Rmd")
RenderMultipleOutput("courses/current/ANOVA_independent_factorial/ANOVA_independent_factorial.Rmd")

# Week 8
RenderMultipleOutput("courses/current/ANOVA_repeated_mixed/ANOVA_repeated_and_mixed.Rmd")

# Week 9
RenderMultipleOutput("courses/current/MANOVA/manova.Rmd")

# Blok III

# Week 11
RenderMultipleOutput("courses/current/correlation_and_simple_regression/correlation_simple_regression.Rmd")

# Week 12
RenderMultipleOutput("courses/current/multiple_regression/multiple_regresson.Rmd")
RenderMultipleOutput("courses/current/pca_cb_alpha/pca_cb_alpha.Rmd")

# Week 13
RenderMultipleOutput("courses/current/mediation/mediation.Rmd")

# Week 14
RenderMultipleOutput("courses/current/moderation/moderation.Rmd")

# Blok IV
