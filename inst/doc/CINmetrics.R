## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(CINmetrics)

## -----------------------------------------------------------------------------
dim(maskCNV_BRCA)

## -----------------------------------------------------------------------------
## Not run:
#library(TCGAbiolinks)
#query.maskCNV.hg39.BRCA <- GDCquery(project = "TCGA-BRCA",
#              data.category = "Copy Number Variation",
#              data.type = "Masked Copy Number Segment", legacy=FALSE)
#GDCdownload(query = query.maskCNV.hg39.BRCA)
#maskCNV.BRCA <- GDCprepare(query = query.maskCNV.hg39.BRCA, summarizedExperiment = FALSE)
#maskCNV.BRCA <- data.frame(maskCNV.BRCA, stringsAsFactors = FALSE)
#tai.test <- tai(cnvData = maskCNV.BRCA)
## End(Not run)

## -----------------------------------------------------------------------------
tai.test <- tai(cnvData = maskCNV_BRCA)
head(tai.test)

## -----------------------------------------------------------------------------
modified.tai.test <- taiModified(cnvData = maskCNV_BRCA)
head(modified.tai.test)

## -----------------------------------------------------------------------------
cna.test <- cna(cnvData = maskCNV_BRCA)
head(cna.test)

## -----------------------------------------------------------------------------
base.seg.test <- countingBaseSegments(cnvData = maskCNV_BRCA)
head(base.seg.test)

## -----------------------------------------------------------------------------
break.points.test <- countingBreakPoints(cnvData = maskCNV_BRCA)
head(break.points.test)

## -----------------------------------------------------------------------------
fraction.genome.test <- fga(cnvData = maskCNV_BRCA)
head(fraction.genome.test)

## -----------------------------------------------------------------------------
cinmetrics.test <- CINmetrics(cnvData = maskCNV_BRCA)
head(cinmetrics.test)

