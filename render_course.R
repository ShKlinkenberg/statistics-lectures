# Render course rmd
rm(list = ls())


# NOT RUN {
library(rmarkdown)
library(stringr)

RenderMultipleOutput <- function(path) {

  file = str_extract(path, "\\w+.Rmd$")
    
  # render the default (first) format defined in the file
  rmarkdown::render(input         = path, 
                    output_format = "ioslides_presentation",
                    output_file   = gsub("....$", "_IOslides.html", file)
                    )

  file = str_extract(path, "\\w+.Rmd$")
      
  rmarkdown::render(input         = path, 
                    output_format = "html_document",
                    output_file   = gsub("....$", "_handout.html", file)
                    )

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

# Week 7

# RenderMultipleOutput("")