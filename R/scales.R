#' OPM palettes with ramped colours
#'
#' @param palette Choose from 'opm_palettes' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @examples
#' library(scales)
#' show_col(opm_pal()(10))
#'
#' filled.contour(volcano,color.palette = opm_pal(), asp=1)
#'
#' @export
opm_pal <- function(palette = "primary", 
                   alpha = 1, 
                   reverse = FALSE) {
    pal <- opm_palettes[[palette]]
    if (reverse){
        pal <- rev(pal)
    }
    return(colorRampPalette(pal, alpha))
}

#' Setup colour palette for ggplot2
#'
#' @rdname scale_color_opm
#'
#' @param palette Choose from 'opm_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = factor(cyl))) +
#'   scale_colour_opm(palette="opm_qual")
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = hp)) +
#'   scale_colour_opm(palette="opm_qual", discrete = FALSE)
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_opm(palette="accent")
#' ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_opm()
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_opm <- function(palette = "primary",
                           discrete = TRUE, 
                           alpha = 1, 
                           reverse = FALSE,
                          ...) {
   if (discrete) {
       discrete_scale("colour", "opm", palette=opm_pal(palette, alpha = alpha, reverse = reverse))
   } else {
       scale_color_gradientn(colours = opm_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
   }
    #scale_colour_manual(values=opm_palettes[[palette]])
}

#' @rdname scale_color_opm
#' @export
scale_colour_opm <- scale_color_opm

#' #' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'opm_palettes' list
#'
#' @inheritParams opm_pal
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_opm <- function(palette="primary",
                          discrete = TRUE, 
                          alpha = 1, 
                          reverse = FALSE,
                          ...) {
    if (discrete) {
        discrete_scale("fill", "opm", palette=opm_pal(palette, alpha = alpha, reverse = reverse))
    }
    else {
        scale_fill_gradientn(colours = opm_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
    }
}
