# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

# hello <- function() {
#   print("Hello, world!")
# }
#' @export

bg_setter <- function(color, blanker = F){
  if(blanker == T){
    themer <- theme(
      panel.background = element_rect(
        fill = color
      ),
      legend.background = element_rect(
        fill = color
      ),
      plot.background = element_rect(
        fill = color,
        color = color
      ),
      axis.line = element_blank(),
      axis.ticks = element_blank(),
      axis.text = element_blank(),
      axis.title = element_blank(),
      panel.grid = element_blank()
    )
    return(themer)
  } else if(blanker == F){
    themer <- theme(
      panel.background = element_rect(
        fill = color
      ),
      legend.background = element_rect(
        fill = color
      ),
      plot.background = element_rect(
        fill = color,
        color = color
      )
    )
    return(themer)
  } else {
    print("please choose the 'blanker' parameter to be T or F(default)")
  }

}

