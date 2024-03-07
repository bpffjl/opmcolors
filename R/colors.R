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
#' ryg
#' grayscale
#' coffees
#' sapphires
#' jades
#' garnets
#' fire_ice
#' royal
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
    "OPM Blue"  = "#093453",
    # OPM Blue
    "OPM Light Blue" = "#009ED1",
    # OPM Light Blue
    "OPM Red"  = "#D13138",
    # OPM Red
    "OPM Light Gray" = "#727477"  # OPM Light Gray
  ),
  
  secondary = c(
    "OPM Orange"  = "#D16A00",
    # OPM Orange
    "OPM Tan" = "#C4B595",
    # OPM Tan
    "OPM Gold"  = "#E1B424",
    # OPM Gold
    "OPM Muted Blue" = "#527794",
    # OPM Muted Blue
    "OPM Green"  = "#008540",
    # OPM Green
    "OPM Bold Blue" = "#005999"  # OPM Bold Blue
  ),
  
  opm_blue_3 = c(
    "OPM Blue"  = "#093453",
    # OPM Blue
    "OPM Red"  = "#D13138",
    # OPM Red
    "OPM Light Blue" = "#009ED1"  # OPM Light Blue
  ),
  
  opm_blue_5 = c(
    "OPM Blue"  = "#093453",
    # OPM Blue
    "OPM Gold"  = "#E1B424",
    # OPM Gold
    "OPM Orange"  = "#D16A00",
    # OPM Orange
    "OPM Tan" = "#C4B595",
    # OPM Tan
    "OPM Muted Blue" = "#527794"  # OPM Muted Blue
  ),
  
  opm_light_blue_3 = c(
    "OPM Light Blue" = "#009ED1",
    # OPM Light Blue
    "OPM Blue"  = "#093453",
    # OPM Blue
    "OPM Red"  = "#D13138" # OPM Red
    
  ),
  opm_light_blue_5 = c(
    "OPM Light Blue" = "#009ED1",
    # OPM Light Blue
    "OPM Gold"  = "#E1B424",
    # OPM Gold
    "OPM Orange"  = "#D16A00",
    # OPM Orange
    "OPM Green"  = "#008540",
    # OPM Green
    "OPM Bold Blue" = "#005999"  # OPM Bold Blue
    
  ),
  
  opm_red_3 = c(
    "OPM Red"  = "#D13138",
    # OPM Red
    "OPM Blue"  = "#093453",
    # OPM Blue
    "OPM Light Blue" = "#009ED1"  # OPM Light Blue
  ),
  
  opm_red_5 = c(
    "OPM Red"  = "#D13138",
    # OPM Red
    "OPM Gold"  = "#E1B424",
    # OPM Gold
    "OPM Muted Blue" = "#527794",
    # OPM Muted Blue
    "OPM Tan" = "#C4B595",
    # OPM Tan
    "OPM Bold Blue" = "#005999"  # OPM Bold Blue
    
  ),
  
  opm_gray_4 = c(
    "OPM Light Gray" = "#727477",
    # OPM Light Gray
    "OPM Blue"  = "#093453",
    # OPM Blue
    "OPM Light Blue" = "#009ED1",
    # OPM Light Blue
    "OPM Red"  = "#D13138" # OPM Red
  ),
  
  ryg = c("#721515", "#0D4A46", "#E2C334"),
  
  # sequential palettes
  
  # light to dark
  grayscale = c("#E1E2E2", "#727477", "#4D4D4D", "#1D1D1D"),
  
  coffees = c(
    "#F5E4CE",
    "#ebc99d",
    "#e0ac69",
    "#d69138",
    "#cf7e15",
    "#9c5f10",
    "#663e0a",
    "#331f05"
  ),
  
  sapphires = c(
    "#CADCE9",
    "#95BAD4",
    "#5C95BD",
    "#2672A8",
    "#005999",
    "#004373",
    "#002C4B",
    "#001626"
  ),
  
  jades = c(
    "#9FD4D1",
    "#6CBDB8",
    "#3CA7A1",
    "#1A9891",
    "#14726C",
    "#0D4A46",
    "#072523",
    "#051c1a"
  ),
  
  garnets = c(
    "#fff5f0",
    "#fee0d2",
    "#fcbba1",
    "#fc9272",
    "#fb6a4a",
    "#ef3b2c",
    "#cb181d",
    "#99000d"
  ),
  
  # diverging palettes
  
  # from orange to blue
  fire_ice = c(
    "#CF7E15",
    "#EDAF6E",
    "#F3D0AE",
    "#F1F1F1",
    "#AFBBD3",
    "#6B88B6",
    "#005999"
  ),
  
  # from gold to purple
  royal = c(
    "#fec44f",
    "#fee391",
    "#fff7bc",
    "#ffffe5",
    "#b2abd2",
    "#542788",
    "#2d004b"
  )
  
)
