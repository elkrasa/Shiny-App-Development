server <- function(input, output){
    color <- c("#765285","#D1A827","#709FB0", "#849974", "#A0C1B8")
       output$lines <- renderPlot({
        my_data%>%filter(date >= input$trajectory[1] & date <= input$trajectory[2])%>% 
            ggplot(aes(date,Measurment,group =Parameters, colour =Parameters))+
         geom_line(alpha = 0.9, size = 1) + 
               scale_x_date(date_breaks = "1 month", date_labels = "%b %d") +
    scale_colour_manual(values = color, name = "Parameters")+
                     labs(title = "Volume loosing diagramm", x = "Date", y = "How volume decreases in cm")
    })
} 
