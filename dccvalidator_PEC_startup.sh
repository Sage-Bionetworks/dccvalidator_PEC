#!/usr/bin/bash

# Pass environment variable to Shiny
echo "" >> .Renviron
echo APP_REDIRECT_URL=$APP_REDIRECT_URL >> .Renviron
echo R_CONFIG_ACTIVE=$R_CONFIG_ACTIVE >> .Renviron
echo client_id=$client_id >> .Renviron
echo client_name=$client_name >> .Renviron
echo client_secret=$client_secret >> .Renviron
# Now run the base start-up script
./startup.sh