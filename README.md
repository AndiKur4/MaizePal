<!-- README.md is generated from README.Rmd. Please edit that file -->

Maize Color Palettes
====================

![](maizePal.png)

insert text introduction to this package. Statement about maize
diversity, color palettes inspired by colors. Talk a little about the
pigments that create different colors, maybe about the significance of
these colors in different cultures.

Installation
------------

``` r
install.packages("MaizePal")
```

Usage
-----

``` r
library("MaizePal")

# See all palettes
names(maize_palettes)
#>  [1] "Anthocyanins1" "Anthocyanins2" "RubyGold"      "Sweetest"     
#>  [5] "GlassGem"      "Husk"          "HighlandMAGIC" "MaizAzul"     
#>  [9] "JimmyRed"      "FloweringTime" "HopiBlue"      "Painted"      
#> [13] "MaizMorado"    "OaxacaGreen"
```

Palettes
--------

### Sweetest

``` r
maize_pal("Sweetest")
```

![](figure/Sweetest-1.png)

### Anthocyanins1

``` r
maize_pal("Anthocyanins1")
```

![](figure/Anthocyanins1-1.png)

### Anthocyanins2

``` r
maize_pal("Anthocyanins2")
```

![](figure/Anthocyanins2-1.png)

### RubyGold

``` r
maize_pal("RubyGold")
```

![](figure/RubyGold-1.png)

### JimmyRed

``` r
maize_pal("JimmyRed")
```

![](figure/JimmyRed-1.png)

### MaizAzul

``` r
maize_pal("MaizAzul")
```

![](figure/MaizAzul-1.png)

### HopiBlue

``` r
maize_pal("HopiBlue")
```

![](figure/HopiBlue-1.png)

### GlassGem

``` r
maize_pal("GlassGem")
```

![](figure/GlassGem-1.png)

### Painted

``` r
maize_pal("Painted")
```

![](figure/Painted-1.png)

### MaizMorado

``` r
maize_pal("MaizMorado")
```

![](figure/MaizMorado-1.png)

### OaxacaGreen

``` r
maize_pal("OaxacaGreen")
```

![](figure/OaxacaGreen-1.png)

### FloweringTime

``` r
maize_pal("FloweringTime")
```

![](figure/FloweringTime-1.png)

### Husk

``` r
maize_pal("Husk")
```

![](figure/Husk-1.png)

### HighlandMAGIC

``` r
maize_pal("HighlandMAGIC")
```

![](figure/HighlandMAGIC-1.png)

``` r
library("ggplot2")
ggplot(mtcars, aes(factor(cyl), fill=factor(gear))) +  geom_bar() +
  scale_fill_manual(values = maize_pal("Anthocyanins1"))
```

![](figure/ggplot1-1.png)
