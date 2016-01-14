library(shiny)

fluidPage( 
  titlePanel("Monthly Budget Planning"),
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = "number", label = "Input the value of your monthly income :", value = 2500, min = 10, max = 100000, step = 10),
      submitButton("Calculate"),
      br(),
      br(),
      img(src = "money-saving.png", height = 100, width = 120)
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel('Apps',
      h4('This application will divide your monthly income into 50/20/30 Guidelines where it           is used to plan your monthly budget.'),
      h4('50       : Fixed Cost' , style = "color:blue"),
      h4('20       : Financial Goal' , style = "color:green"),
      h4('30       : Flexible Spending' , style = "color:orange"),
        
      h3("Results of Allocations based on 50/20/30 Guidelines :"),
      h4("You entered :"),
      verbatimTextOutput("USD"),
      h4("Portion for Fixed Cost is : "),
      verbatimTextOutput("FC"),
      h4("This portion is use for fix expenses like rent or mortgage payments, utilities and car payments." , style = "color:blue"),
      h4("Portion for Financial Goal is  : "),
      verbatimTextOutput("FG"),
      h4("This portion is use to achieve three essential goals everyone should strive for: paying down credit card debt, saving for retirement and building an emergency fund." , style = "color:green"),
      h4("Portion for Flexible Spending is  : "),
      verbatimTextOutput("FS"),
      h4("This portion is use for day-to-day expenses that can vary from month to month, like eating out, groceries, shopping, hobbies, entertainment, or gas. ", style = "color:orange")
      
      ),
      tabPanel('About',
               h4('This 50/20/30 guideline apps can help to figure out how much you may want to                    allocate to each area every month.'),
               h4('It can also help you determine the order in which your money can be                       allocated'),
               strong('TIP'),
               strong('To determine your flex-spending amount, we recommend first subtracting your fixed costs and financial goal contributions from your take-home pay i.e. the amount that hits your bank account after taxes and other contributions.'),
               strong(' This way, you will know that the amount that is left for flexible spending is truly yours to spend however you want.')
               
      )))
)
)