#' Complete list of palettes
#'
#' Use \code{\link{maize_pal}} to construct palettes of desired length.
#'
#' @export
maize_palettes <- list(
  Anthocyanins1 = c("#f8f1d9", "#edc262", "#9a3a28", "#581d2c", "#2e1342"),
  Anthocyanins2 = c("#f4e8a7", "#e7a96f", "#b05732", "#6a3131", "#2f2929"),
  RubyGold = c("#57170f", "#943124", "#eabf5a", "#f4e093", "#edaa5d", "#e77e39"),
  Sweetest = c("#b2c66b", "#696d2e", "#f9f2b2", "#f1cf62", "#6f4d22"),
  GlassGem = c("#d1aae6", "#6c5ba5", "#e66e58", "#7f346f", "#9d2315"),
  PodCorn = c("#b28044", "#debc80", "#f1dfda", "#dac9ae", "#988e79"),
  HighlandMAGIC = c("#d73c6c", "#db86a5", "#f2cb5d", "#faebb6", "#914d8f", "#4b1f96"),
  MaizAzul = c("#160d23", "#6e79a2", "#acb1d1", "#e2e7e9", "#9b969c", "#384073"),
  JimmyRed = c("#61241c", "#b66859", "#d59578", "#f1deda", "#ddbb7f", "#a04230"),
  FloweringTime = c("#933141", "#d1aac5", "#f1e89f", "#c1cb68", "#7c7c46", "#626d5c"),
  HopiBlue = c("#763a4e", "#a192ac", "#fcf3ba", "#d4af55", "#607e91", "#28344f"),
  Painted = c("#e77e39", "#9e5727", "#efc164", "#a27937", "#e66e58", "#9d462f"),
  MaizMorado = c("#100708", "#6F0E2E", "#BC184E", "#D77495", "#E4B9C7"),
  OaxacaGreen = c("#CAC67A", "#426F4D", "#213827", "#2C5273", "#817A35")
)

#' A palette generator inspired by the diversity of maize varieties
#'
#'
#' @param n Number of colors desired.
#'   If omitted, uses all colors.
#' @param name Name of desired palette. Choices are:
#'   \code{Anthocyanins1}, \code{Anthocyanins2}, \code{RubyGold},
#'   \code{Sweetest}, \code{GlassGem}, \code{PodCorn},
#'   \code{HighlandMAGIC}, \code{MaizAzul}, \code{JimmyRed},
#'   \code{FloweringTime}, \code{HopiBlue}, \code{Painted},
#'   \code{MaizMorado}, \code{OaxacaGreen}
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colors.
#'   @importFrom graphics rgb rect par image text
#' @return A vector of colors.
#' @export
#' @keywords colors
#' @examples
#' maize_pal("Anthocyanins1")
#' maize_pal("HopiBlue")
#' maize_pal("HighlandMAGIC", 5)
#'
#' # If you need more colors than normally found in a palette, you
#' # can use a continuous palette to interpolate between existing
#' # colors
#'
#'
maize_pal <- function(name, n, type = c("discrete", "continuous")) {
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
