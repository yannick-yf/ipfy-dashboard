# myServer.R

## Remaining requirements
#source("shared_load.R")
#source("plots_funcs.R")
#source("rs_funcs.R")
#source("server_pack.R")

myserver <- function(input, output, session){
  
  observeEvent(input$selected_language, {
    update_lang(session, input$selected_language)
  })
  
}