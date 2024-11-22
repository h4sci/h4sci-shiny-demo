#!/bin/sh
R -e 'install.packages("shinydashboard")'
exec shiny-server

