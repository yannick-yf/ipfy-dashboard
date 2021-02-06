# ui_doctabs.R

tabdesc = c(
  "tab1 - SubTab1" = "This tab shows the annual high-level contribution of tourism to the national economy in terms of expenditure, employment and exports.",
  "tab1 - SubTab2" = "This tab shows national monthly arrivals and stock of international visitors, by country and purpose of visit.",
  "tab1 - SubTab3" = "This tab shows national monthly spend (total, per trip and per night) of international visitors, by country and purpose of visit.",
  "tab1 - SubTab4" = "This tab compares national monthly arrivals with the total spend of international visitors, by country and purpose of visit.",
  "tab2 - SubTab1" = "This tab provides an annual high-level tourism overview for regions, RTOs and territorial authorities. It provides information on tourism expenditure by country and tourism product.",
  "tab3 - SubTab1" = "This tab shows annual total and commercial visitor nights by New Zealand region for international and domestic visitors. Domestic visitors' total nights are not available after 2012.",
  "tab4 - SubTab1" = "This tab shows the proportion of annual spend by tourism product for international and domestic visitors, for regions, RTOs and territorial authorities.",
  "Research Paper" = "This tab shows annual international tourism expenditure as a percentage of GDP, by regions and territorial authorities.",
  "Documentation" = "This tab shows a variety of monthly accommodation statistics for RTOs, by different types of commercial accommodation.",
  "Help/Contact" = "This tab shows national nights stayed, total spend, spend per night and spend per trip for international visitors, by tourism-related activity. Data is presented quarterly.",
  #
  "Business Demography" = "This tab shows annual national trends by industry for a variety of statistics on businesses and employees.",
  "Business Events" = "This tab shows quarterly key diagnostics on the number, type, length and size of business events nationally.",
  "Spend by Visitor Market" = "This tab shows annual spend by international visitors by country, and annual spend by domestic visitors by region, by tourism product, for regions, RTOs, and territorial authorities.",
  "Visitor Spend by Origin" = "This tab shows annual spend by international and domestic visitors by tourism product, for regions, RTOs and territorial authorities. You can compare between domestic origins by region, or international origins by country.",
  "Visitor Spend by Destination" = "This tab shows annual spend by international and domestic visitors by tourism product, for regions, RTOs and territorial authorities. You can compare between destinations by region, RTO or territorial authority.",
  "Accommodation Used" = "This tab shows visitors over a three-year period by country and detailed type of accommodation used.",
  "Exchange Rates" = "This tab shows daily indexes of exchange rates for our major tourism markets, compared with the number of arrivals and total spend from those markets."
)

frontp = function() div(class = "frontp",
                        div(class = "front-banner",
                            div(class = "imgcon"),
                            div(class = "hcon", h1("Data Scientist"))
                        ),
                        #tags$p(tags$span(class = "warning", "This app is still in active development and has not been officially launched.")),
                        tags$p(class = "intro", "This Dashboard is a one-stop view of information about myself. It brings together a non-exhaustive range of apps, scripts, and models that I produced as well as my CV and URLs to my GitHub and LinkedIn accounts."),
                        div(class = "intro-divider"),
                        tags$p("Main subject-area groupings functional activites are shown on the toolbar above. To navigate around this site, left-click one of the subject areas and then select one of the related categories in the drop down list."),
                        div(class = "box-con",
                            tags$a(target = "_blank",
                                   href = "CV Flores Yannick 202008_v2.pdf",
                                   div(class = "float box box-rear",
                                       tags$p(
                                         tags$img(class = "rear-preview", src = "CV_logo.jpg"),
                                         span(class = "bold", "CV: "),"Click here to download my up-to-date CV."
                                       )
                                   )),
                            tags$a(target = "_blank",
                                   href = "https://www.linkedin.com/in/yannick-flores-49583a102/",
                                   div(class = "float box box-more",
                                       tags$p(class = "intro", "Linkedin Profile"),
                                       tags$p("Click here to get more details on my career through my LinkedIn profile")
                                   )),
                            tags$a(target = "_blank",
                                   href = "https://github.com/yannick-yf?tab=repositories",
                                   #href = "https://github.com/yannick-yf",
                                   div(class = "float box box-more2",
                                       tags$p(class = "intro", "GitHub Profile"),
                                       tags$p("Click here to get access to more technical details through my GitHub profile")
                                   ))
                        ),
                        tags$p("Some Graphs can be downloaded as PDFs and some tables can be downloaded to a csv file. Data used in each section are public and free of usage. Information on how to use the app and contact details are available in the",
                               tags$a("Help/Contact", title = "Help Tab", href = "#", id = "ContactTabLink"), "tab.",
                               tags$script("$('#ContactTabLink').click(function(){$('a[data-value=\"Help/Contact\"]')[0].click();});")
                        ),
                        div(class = "box box-timeout",
                            tags$p(tags$span(class = "bold", "PLEASE NOTE:"),
                                   "This app may time-out if left idle too long, which will cause the screen to grey-out.",
                                   "To use the app again, refresh the page. This will reset all previously-selected input options.")
                        )
)

helpp = function() div(class = "frontp",
                       h3("The Team"),
                       div(
                         tags$p("Description here"),
                         tags$ul(
                           tags$li("A little bit more details here."),
                           tags$li("And more here", tags$span(class = "warning", "With a wanring message"), "as an example")
                         )
                       ),
                       h3("Contact/Feedback"),
                       div(
                         tags$p("Have any feedback? Please send any feedback at the folwing address: ",
                                tags$span(class = "defword", "yannick.flores1992@gmail.com")),
                         tags$p("Please mention the following in the subject:"),
                         tags$ul(
                           tags$li("The name of the app (ipfy-dashboard)"),
                           tags$li("Which tab/sub-tab you are referring (if applicable)"),
                           tags$li("e.g. ipfy-dashboard: Profile")
                         ),
                         tags$p("Then details of feedback in the body of the email.")
                       )
)