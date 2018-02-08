# Statistics Lectures

For the last few years I've been using Rstudio to create HTML5 presentations in Rmarkdown's IOslides. This works great except that I have to change mij source files every new year if there are changes in the curriculum.

So now I've thought of a setup where I create seperate .rmd files for every topic I teach and generate IOslides using a template where I specify which topics should be added.

## Template

The template folder contains the main file used to generate IOslides. To create a new lecture, just open the template and save as a new lecture in courses/coursename/lecturename.rmd. In this file add the topics available in topics. Refer to the .rmd files in the topic folder.

## Topics

This folder contains all topics covered in my teaching. New topics can be added by creating a new topic folder and inside the folder a new topic .rmd file. The .rmd file has no YAML header, just a first section heading # and subsequent ## headings.

## Courses

In this folder courses are added and in each course, lectures are available. I plan to copy the current course for the next year and change course content where nessesary.

## View content

[Lectures and topics](http://shklinkenberg.github.io/statistics-lectures/)
