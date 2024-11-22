# Basic Shiny Demo with Dashboard Layout


## Run a Local Dev Server

To start shiny from inside your R session, simply run  

```r
library(shiny)
runApp('shiny-home')


```

from the document root of this repository. 


## Run on Shiny Server via Docker


> !! ARM Users (i.e., first and foremost Apple M1 and M2 Macs) remember that shiny images are not built for ARM yet. To fix this, use --platform linux/amd64 to run with an emulated image otherwise docker won't find an image for you.  

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


## A Slightly More Realistic Docker Setup

Use the docker compose file provided with this repository. This would also start a postgres container alongside your shiny container, so you can persist result in a database or get data from it for your app. Note, that it's still a demo case and you would want to 

- to run as non-root in production
- to build your own docker image layer with your packages installed so you don't have to do it on start up. 









