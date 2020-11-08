# app.R
Sys.setenv(LANG = "en")
#UI and Server Files
source("global.R")

source("ui.R", local = TRUE)
source("myServer.R", local = TRUE)

shinyApp(ui = ui,
         server = myserver)

# Multiple language in RShiny
# https://appsilon.com/internationalization-of-shiny-apps-i18n/