#' My really ugly theme
#'
#' @returns
#' @export
#'
#' @examples
#' ggplot(data = penguins, aes(x = flipper_length, y = body_mass_g)) + 
#' geom_point() + 
#' my_theme()
my_theme <- function(){
  theme(panel.background = element_rect(fill = "green"), 
        panel.grid.major = element_line(color = "yellow"))
}