# this script is to analyze some gapminder data for the SWC final project
# Eric D. Johnson March 19, 2015
# eric.johnson.d@gmail.com

# Load packages
require(knitr)
require(markdown)

# Create .md, .html, and .pdf files
knit("GapMinder_rMarkdown.Rmd")
markdownToHTML('GapMinder_rMarkdown.md', 'GapMinder_rMarkdown.html', options=c("use_xhml"))
shell("pandoc -s GapMinder_rMarkdown.html -o MGapMinder_rMarkdown.pdf")


render("GapMinder_rMarkdown.Rmd")
