FROM rocker/verse

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN Rscript -e "update.packages(ask = FALSE)"

RUN Rscript -e "install.packages('learnr')"
RUN Rscript -e "install.packages('pcr')"
RUN Rscript -e "install.packages('colocr')"
