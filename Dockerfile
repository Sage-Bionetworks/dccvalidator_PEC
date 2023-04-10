FROM sagebionetworks/shiny-base:release-1.0
# This is the expected application installation folder
WORKDIR /srv/shiny-server/app
COPY --chown=shiny ./ ./

# Set up Python and install the Synapse Python client
RUN Rscript -e "install.packages('reticulate', repos='http://cran.rstudio.com/', verbose=FALSE)"
RUN Rscript -e "library(reticulate); install_miniconda(); py_discover_config(); py_install(c('synapseclient', 'pandas'), pip = TRUE, pip_ignore_installed=TRUE)"

# By default the log level is TRACE.  We bump up one level to DEBUG to make the logs a bit less verbose
ENV SHINY_LOG_LEVEL=DEBUG

# set up r packages via renv. Use binary lib matching the shiny-base ubuntu version
# to speed up installatioon.
RUN Rscript -e 'renv::restore(repos="https://packagemanager.rstudio.com/all/__linux__/jammy/latest"); renv::install("./")'

# running that script, to pass a configuration env var to Shiny
RUN chmod +x dccvalidator_PEC_startup.sh
CMD ["./dccvalidator_PEC_startup.sh"]
