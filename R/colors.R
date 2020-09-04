#' Complete list of palettes
#'
#' Use \code{\link{maize_palette}} to construct palettes of desired length.
#'
#' @export
maize_palettes <- list(
  color1 = c("#b7e1f3", "#189aa8", "#aad356", "#f9c908", "#f35844"),
  color2 = c("#f2e7b9", "#df4118", "#202724", "#60be98", "#f7fed6"),
  color3 = c("#ffc100", "#f88600", "#ad3a59", "#8b1e42", "#47295e"),
  color4 = c("#930000", "#e05500", "#da8f00", "#897800", "#39000d"),
  color5 = c("#c44165", "#dac197", "#fff9d6", "#a6e0b9", "#00aea8"),
  color6 = c("#193d5a", "#f2f0f0", "#ffad00", "#c10000", "#760000"),
  color7 = c("#ff4062", "#ff9c98", "#facdab", "#c8c9a8", "#81b09b"),
  color8 = c("#01151a", "#003a48", "#007792", "#c8c8c8", "#b51b06")

)

#' A palette generator inspired by the diversity of maize varieties
#'
#'
#' @param n Number of colors desired.
#'   If omitted, uses all colors.
#' @param name Name of desired palette. Choices are:
#'   \code{color1}, \code{color2}, \code{color3},
#'   \code{color4}, \code{color5}, \code{color6},
#'   \code{color7}, \code{color8}
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colors.
#'   @importFrom graphics rgb rect par image text
#' @return A vector of colors.
#' @export
#' @keywords colors
#' @examples
#' maize_palette("color1")
#' maize_palette("color2")
#' maize_palette("color3", 5)
#'
#' # If you need more colors than normally found in a palette, you
#' # can use a continuous palette to interpolate between existing
#' # colors
#'
#'
maize_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- maize_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}
