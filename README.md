# Basic Shiny Demo with Dashboard Layout


## Run a Local Dev Server

To start shiny from inside your R session, simply run  

```r
library(shiny)
runApp()


```

from the document root of this repository. 


## Run on Shiny Server via Docker

You can run shiny in different server setups when you think about exposing your work beyond local R sessions. 
Here are a few common approaches:

- shinyapps.io (cloud hosting by Posit)
- Posit Connect (self-hosted enterprise level server)
- shiny server open source (self-hosted community solution)
     - simply install on a VM
     - use a docker container, e.g., from the rocker project


Assuming you have docker or Docker Desktop installed, simply start a container


```sh
docker run --rm -d -p 1234:3838 rocker/shiny

```

to spin a up a container based on the latest shiny server image from rocker.
If that images was not present on your docker machine, docker would pull it from dockerhub.
In that case a first time start would take a little longer because of the download. 

Note the port forwarding that maps port 1234 of your localhost (dockerhost) to port 3838 inside the container which is the standard port for shiny server. 










