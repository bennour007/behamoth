#' Easy color set up for easier ggplot theming
#' `bg_setter()` sets up background color and panel grid for easy theming in ggplot2
#' @param color the desired color for the background, this color will be used for the panel, legend, and the plot.
#' @param blanker a logical. If FLASE(default) it will keep usual plotting lines and text, if TRUE all those elements would be removed
#' @return an object.



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
  } else {
    themer <- "please choose the 'blanker' parameter to be T or F(default)"
  }
  return(themer)
}

