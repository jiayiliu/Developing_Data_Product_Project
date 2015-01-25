---
title       : Introduction to a shiny stock predictor
subtitle    : 
author      : Jiayi (Jason) Liu
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [shiny]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## A traditional stock price chart


The S&P index retrieved today.

```r
chartSeries(data,TA=NULL)
```

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png) 

--- 

## But how about the future?

1. Use future prediction to see the trend
2. Easy to set price target

Use a ruler in front of the monitor?

--- 

## What we want to know about the future

1. Future price target
2. Confidence range of the price

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png) 

---

## A Shiny stock price web app

A fresh release is [here](https://jiayiliu.shinyapps.io/Project)

By Jiayi (Jason) Liu.

---

## Next steps

1. Add multiple stock prices comparison
2. Better date ticks
3. Better UI
4. price picker from plot

---

