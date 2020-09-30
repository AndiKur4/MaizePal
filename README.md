<!-- README.md is generated from README.Rmd. Please edit that file -->

![](maizePal.png)

### Why MaizePal?

About one year ago, my research took an unexpected turn & I found myself
studying maize. For better or worse, I was here, surrounded by corn & by
people who seemed to be obsessed with it. At first, I didn’t “get it”
because to me, corn was corn was corn. It was yellow and green and
covered vast swaths of the Midwest. Anyone who studies maize landraces,
however, knows that this is not a very generous archetype.

> Landraces are varieties of crops that have been bred by farmers
> through artificial selection outside of the formal breeding sector and
> are often associated with a particular agroecosystem and cultural
> heritage.

The lab I recently joined ([GEMMAlab](https://www.gemmalab.org/))
studies maize landraces to ask fundamental questions about evolution and
adaptation, knowledge that we can then apply to practical applications
in breeding and conservation. In many ways, our lab’s research exists in
sharp contrast to my initial assessment of the crop, and after a season
working in the nursery, I am now convinced that maize is far more
beautiful than my mental archetype gave it credit for. Of the many
varieties growing in our nursery, we harvested cobs with kernels that
were shiny and red as rubies, and others that were pink and purple and
looked like they belonged in a candy shop. Further searching into
international collections online revealed cobs from Oaxaca that were
jade green and blue, cobs from Peru that looked like cream-colored pine
cones with purple speckles, and still others that are pitch black when
harvested and magenta when milled.

The variety of colors and shapes seems endless, and I could wax poetic
about how wrong I was that corn is just yellow and green. Instead, I
wrote an R package inspired by the colors and cobs I’ve seen. This
collection of color palettes is not perfect nor complete, and I will
continue to add to it as I come across more cobs I would like to
document and share. In the meantime, I hope you find this package to be
useful, colorful, and fun.

<img src="HighMAGIC.jpg" style="width:50.0%" />

> The above picture is of a mapping population that our lab is currently
> working with, as a part of the [Genetics of Highland Adaptation in
> Maize](http://highlandadaptation.org/) project. The parent landraces
> of this population are from highlands fields in Central and South
> America (Sabanero, Bolita, Connor, Pising, Azul, Mishca, Cpunti, and
> Palomero).

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
#>  [5] "GlassGem"      "PodCorn"       "HighlandMAGIC" "MaizAzul"     
#>  [9] "JimmyRed"      "FloweringTime" "HopiBlue"      "Painted"      
#> [13] "MaizMorado"    "OaxacaGreen"
```

Palettes
========

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

``` r
library("ggplot2")
ggplot(mtcars, aes(factor(cyl), fill=factor(gear))) +  geom_bar() +
  scale_fill_manual(values = maize_pal("GlassGem"))
```

![](figure/ggplot1-1.png)

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

### PodCorn

``` r
maize_pal("PodCorn")
```

![](figure/PodCorn-1.png)

### HighlandMAGIC

``` r
maize_pal("HighlandMAGIC")
```

![](figure/HighlandMAGIC-1.png)

![](nurseryNCSU.JPG)

> Our summer nursery at the Central Crops Research Station in NC
