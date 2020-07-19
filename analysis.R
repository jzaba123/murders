library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(with = 0.5, stat = "identity", color= "black") +
  coord_flip()

ggsave("figs/barplot.png")


# Useful Links
# This video corresponds to the textbook section on knitr basics. 
# 
# The code for the example report is available.
# 
# It also may be useful to explore the RMarkdown website and the knitr website.
# 
# Key points
# The knitr package is used to compile R markdown documents.
# The first time you click the "knit" button on the editor pane a pop-up window will prompt you to install packages, but after that is completed, the button will automatically knit your document.
# github_document gives a .md file, which will give the best presentation on GitHub
# Code
# output: html_document 
# output: pdf_document 
# output: word_document
# output: github_document


# https://raw.githubusercontent.com/rairizarry/murders/master/report.Rmd






