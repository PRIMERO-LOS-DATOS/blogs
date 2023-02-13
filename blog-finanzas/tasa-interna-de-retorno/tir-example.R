library(jrvFinance) # This package has a the irr formula to solve our problem
library(tidyquant) # general R quant package 
library(DT) # package to display pretty Data tables
library(dplyr)

project1_cf <- tibble(Year = 0:5,
                      cf = c(-800,200,250,300,350,400))

project2_cf <- tibble(Year = 0:5,
                      cf = c(-500,150,170,178,250,300))

project1_cf %>%
  DT::datatable(rownames = FALSE,caption = "Project 1")


project2_cf  %>%
  DT::datatable(rownames = FALSE,caption = "Project 2")

# To calculate IRR we will use the IRR formula from the jrvFinance library

irr1 <- project1_cf %>%
  select(cf) %>%
  .[[1]] %>%
  irr()


irr2 <- project2_cf %>%
  select(cf) %>%
  .[[1]] %>%
  irr()

irr_tbl <- tibble(Name = c("Project 1", "Project 2"),
                  IRR = c(irr1,irr2))

irr_tbl %>%
  datatable(caption = "Internal rate of returns for the two projects.")
