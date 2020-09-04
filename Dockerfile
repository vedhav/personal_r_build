FROM openanalytics/r-base

MAINTAINER "Vedha Viyash" vedhaviyash4@gmail.com

RUN apt-get update && apt-get install  -y software-properties-common
RUN add-apt-repository ppa:marutter/c2d4u3.5
RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    build-essential \
    libcurl4-gnutls-dev \
    libxml2-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    libssl1.0.0

RUN apt-get update && apt-get install -y \
    libmpfr-dev libmariadb-client-lgpl-dev openjdk-8-jre-headless r-cran-rjava

RUN R CMD javareconf JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

RUN R -e "install.packages(c('shiny', 'rmarkdown'), repos='https://cloud.r-project.org/')"

RUN R -e "install.packages('tidyverse')"
RUN R -e "install.packages('DBI')"
RUN R -e "install.packages('devtools', repos='http://cran.rstudio.com/')"
RUN R -e "devtools::install_github('rstudio/pool')"
RUN R -e "install.packages('DT')"
RUN R -e "install.packages('shinyjs')"
RUN R -e "install.packages('RMySQL')"
RUN R -e "install.packages('data.table')"
RUN R -e "install.packages('urltools')"
RUN R -e "install.packages('dbx')"
RUN R -e "devtools::install_github('daattali/shinyalert', force = TRUE)"
RUN R -e "install.packages('cowplot')"
RUN R -e "install.packages('ggpubr')"
RUN R -e "install.packages('rapportools')"
RUN R -e "install.packages('shinyWidgets')"
RUN R -e "install.packages('shinycssloaders')"
RUN R -e "install.packages('mailR')"
RUN R -e "install.packages('digest')"
RUN R -e "install.packages('shinyBS')"
RUN R -e "install.packages('plotly')"
RUN R -e "install.packages('leaflet')"
RUN R -e "install.packages('leaflet.extras')"
RUN R -e "install.packages('shinyMobile')"
RUN R -e "install.packages('sqldf')"
RUN R -e "install.packages('apexcharter')"
RUN R -e "install.packages('shinydashboard')"
RUN R -e "install.packages('gbm')"
RUN R -e "install.packages('caret')"
RUN R -e "install.packages('randomForest')"
RUN R -e "install.packages('psych')"
RUN R -e "install.packages('bs4Dash')"
RUN R -e "install.packages('flexdashboard')"
RUN R -e "install.packages('tidyquant')"
