#' OPM Color Palettes
#'
#'A collection of color palettes for the US Office of Personnel Management. The palettes include:
#' primary 
#' secondary 
#' opm_blue_3 
#' opm_blue_5
#' opm_light_blue_3
#' opm_light_blue_5
#' opm_red_3
#' opm_red_5
#' opm_gray_4
#'
#'
#'@examples
#'
#' # Make an x-y plot using the Primary palette
#' library(tidyverse)
#' df <- data.frame(x = rnorm(100, 0, 20),
#'                 y = rnorm(100, 0, 20),
#'                cl = sample(letters[1:8], 100, replace=T))
#' ggplot(df, aes(x, y, colour=cl, shape=cl)) +
#'   geom_point(size=4) + scale_color_mncolors(palette="primary") +
#'   theme_bw() + theme(aspect.ratio=1)
#'
#' # Make a histogram using the Secondary palette
#' ggplot(df, aes(x, fill=cl)) + geom_histogram() +
#'   scale_fill_mncolors(palette="secondary")
#'
#' @export
opm_palettes <- list(
    ## https://opm365.sharepoint.com/SitePages/OPM-Brand-Standards.aspx

    primary = c(
        "OPM Blue"  = "#093453", # OPM Blue
        "OPM Light Blue" = "#009ED1",  # OPM Light Blue
        "OPM Red"  = "#D13138", # OPM Red
        "OPM Light Gray" = "#727477"  # OPM Light Gray
    ),
    
    secondary = c(
      "OPM Orange"  = "#D16A00", # OPM Orange
      "OPM Tan" = "#C4B595",  # OPM Tan
      "OPM Gold"  = "#E1B424", # OPM Gold
      "OPM Muted Blue" = "#527794",  # OPM Muted Blue
      "OPM Green"  = "#008540", # OPM Green
      "OPM Bold Blue" = "#005999"  # OPM Bold Blue
    ),
    
    opm_blue_3 = c(
      "OPM Blue"  = "#093453", # OPM Blue
      "OPM Red"  = "#D13138", # OPM Red
      "OPM Light Blue" = "#009ED1",  # OPM Light Blue
    ),
    
    opm_blue_5 = c(
      "OPM Blue"  = "#093453", # OPM Blue
      "OPM Gold"  = "#E1B424", # OPM Gold
      "OPM Orange"  = "#D16A00", # OPM Orange
      "OPM Tan" = "#C4B595",  # OPM Tan
      "OPM Muted Blue" = "#527794",  # OPM Muted Blue
    ),
    
    opm_light_blue_3 = c(
      "OPM Light Blue" = "#009ED1",  # OPM Light Blue
      "OPM Blue"  = "#093453", # OPM Blue
      "OPM Red"  = "#D13138", # OPM Red
      
    ),
    opm_light_blue_5 = c(
      "OPM Light Blue" = "#009ED1",  # OPM Light Blue
      "OPM Gold"  = "#E1B424", # OPM Gold
      "OPM Orange"  = "#D16A00", # OPM Orange
      "OPM Green"  = "#008540", # OPM Green
      "OPM Bold Blue" = "#005999"  # OPM Bold Blue
      
    ),
    
    opm_red_3 = c(
      "OPM Red"  = "#D13138", # OPM Red
      "OPM Blue"  = "#093453", # OPM Blue
      "OPM Light Blue" = "#009ED1",  # OPM Light Blue
    ),
    
    opm_red_5 = c(
      "OPM Red"  = "#D13138", # OPM Red
      "OPM Gold"  = "#E1B424", # OPM Gold
      "OPM Muted Blue" = "#527794",  # OPM Muted Blue
      "OPM Tan" = "#C4B595",  # OPM Tan
      "OPM Bold Blue" = "#005999"  # OPM Bold Blue
      
    ),
    
    opm_gray_4 = c(
      "OPM Light Gray" = "#727477",  # OPM Light Gray
      "OPM Blue"  = "#093453", # OPM Blue
      "OPM Light Blue" = "#009ED1",  # OPM Light Blue
      "OPM Red"  = "#D13138", # OPM Red
    )

)

