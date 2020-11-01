# ui.R
# https://www.adweko.com/site/assets/files/2781/data_warehouse_connections_adobestock_139530496.1920x640.jpeg
source("function/ui_doctabs.R")
source("function/helper_funcs.R")
source("function/mbie-styles.R")

ui <- 
  dashboardPage("IPFY Dashboard", thead = tagList(
    tags$head(
      #
      includeCSS("css/mbie-styles.css"),
      includeCSS("css/tdstyles.css"),
      tags$script(src = "js/jszip.min.js"),
      tags$script(src = "js/accounting.min.js"),
      tags$script("accounting.settings.currency.precision = 0;"),
      tags$script(src = "js/jquery-ui-1-11-4.min.js"),
      ## Add jQuery UI tooltips
      ## Use: have class "jui-tip" and
      ##      title attribute = tooltip message
      ## e.g. tags$div(class = "jui-tip", title = "Tooltip Message", radioButtons(...))
      tags$script('$(function(){$(".jui-tip").tooltip();});'),
      ## Use jQuery UI accordion for nice looking show/hide inputs feature
      tags$script('$(function(){$("div.divinput").accordion({
            collapsible: true,
            heightStyle: "content"
         });});'),
      ## Disable DataTable error reporting
      tags$script('$.fn.dataTableExt.sErrMode = "throw";'),
      tags$script(src = "js/iframeResizer.contentWindow.min.js")
    ),
    ## Place mbie_header inside a container-fluid for correct positioning
    div(class = "container-fluid", mbie_header())
  ),
  tabPanel("Start",
           frontp()
  ),
  navbarMenu("Data Processing",
             tabPwT("tab1 - SubTab1"),
             tabPwT("tab1 - SubTab2"),
             tabPwT("tab1 - SubTab3"),
             tabPwT("tab1 - SubTab4")
  ),
  navbarMenu("Data Viz",
             tabPwT("tab2 - SubTab1")),
  navbarMenu("Data Modeling",
             tabPwT("tab3 - SubTab1")),
  navbarMenu("Data App",
             tabPwT("tab4 - SubTab1")),
  
  ########## Help Tab #################
  tabPwT("Help/Contact",
         helpp()
         )
  #####################################
  
  )
  


