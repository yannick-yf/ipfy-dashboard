mbie_header =
  ## Adds a basic MBIE header, that will only display
  ##  if the page is not embedded as an iframe.
  ## Requires: www/mbie-logo.png
  function() div(id = "mbie-header",
                 div(class = "mbie-topbar"),
                 div(class = "mbie-brand",
                     tags$a(class = "mbie-brand", href = "https://google.com",
                            title = "IPFY",
                            tags$img(src = "logo_flores_yannick2.jpg",
                                     alt = "test"))
                 ),
                 tags$script('if(window != window.parent){$("#mbie-header").css("display", "none");}')
  )