################ Data Import #####################

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis,httr, lubridate, plotly, rio, rmarkdown, shiny,
               stringr, tidyr, caret, lars, tidyverse, psych, dygraphs,
               vioplot, gapminder, nycflights13, gapminder, Lahman, ISLR2,
               hms, feather, haven, readxl, DBI, jsonlite, xml2 )


library(dplyr)
library(nycflights13)
library(tidyverse)
library(feather)


## sql conn




## 1 way to do it

library(RODBC)
library(DBI)
library(odbc)
db_conn1 <- odbcConnect("SQLServer_DSN")
sqlQuery(db_conn1, "SELECT * FROM MyTable")

odbcClose(db_conn1)

## 2 way to do it
library(RODBC)
library(DBI)
library(odbc)
db_conn2 <- dbConnect(odbc :: odbc(), "SQLServer_DSN")

odbcClose(db_conn2)

## 3 way to do it
library(RODBC)
library(DBI)
library(odbc)
db_conn3 <- DBI::dbConnect(odbc :: odbc(),
                     Driver = 'SQL Server Native Client 11.0',
                     Server = 'localhost',
                     Database = "MyDatabase",
                     trusted_connection = 'yes',
                     port = 1433)

summary(db_conn3)
odbcClose(db_conn3)


# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console

cat("\014")  # ctrl+L

# Clear mind :)