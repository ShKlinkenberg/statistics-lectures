# Render course rmd

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
  
  rmarkdown::render(input         = path, 
                    output_format = "html_document",
                    output_file   = gsub("....$", "_handout.html", file)
  )

}

RenderMultipleOutput("courses/current/reasoning_nhst/reasoning_empirical_cycle_nhst.Rmd")
RenderMultipleOutput("courses/current/coin_experiment/coin_experiment.Rmd")




