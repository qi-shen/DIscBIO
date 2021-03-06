[![Current CRAN release](https://www.r-pkg.org/badges/version/DIscBIO)](https://cran.r-project.org/package=DIscBIO) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ocbe-uio/DIscBIO/dev?filepath=notebook) [![Build Status](https://travis-ci.org/ocbe-uio/DIscBIO.svg?branch=dev)](https://travis-ci.org/ocbe-uio/DIscBIO) [![DOI](https://zenodo.org/badge/225632936.svg)](https://zenodo.org/badge/latestdoi/225632936)

# DIscBIO

A user-friendly pipeline for biomarker discovery in single-cell transcriptomics.

![DIscBIO](DIscBIOlogo.png)

This is an R package based on the software available at https://github.com/SystemsBiologist/PSCAN.

Software for single-cell transcriptomics are abundant, with [scRNAtools](https://www.scrna-tools.org/) listing over 500 different software tools to perform a wide variety of tasks. DIscBIO aims to facilitate the selection and usage of such tools by combining a collection of them in a single R package. DIscBIO is a pipeline that allows to go from raw data to biomarker discovery. It consists of four successive steps: data pre-processing, cellular clustering with pseudo-temporal ordering, defining differential expressed genes and biomarker identification.

The CTCdataset, which is used as input data in the DIscBIO-CTCs-Notebook, contains information from GEO database [GSE51827](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE51827), which is made available
here under the [Open Database License (ODbL)](https://opendatacommons.org/licenses/odbl/1-0/).

The CONQUER dataset, which is used as input data in the DIscBIO-CONQUER Notebook, contains information from GEO database [GSE41265](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE41265), which is made available
here under the [Open Database License (ODbL)](https://opendatacommons.org/licenses/odbl/1-0/).
The conquer repository is available at http://imlspenticton.uzh.ch:3838/conquer/.


# Installation

## Stable version

[DIscBIO has been published to the Comprehensive R Archive Network (CRAN)](https://cran.r-project.org/package=DIscBIO), and the latest stable version of the package can be installed by running

```r
install.packages("DIscBIO")
```

from any interactive R session.

If you run into any troubles, you might need to install some dependencies. Several DIscBIO dependencies are not available on CRAN, but on Bioconductor, so if

```r
install.packages("DIscBIO", dependencies=TRUE)
```

still doesn't solve the issue, try the following:

```r
install.packages("BiocManager")
BiocManager::install("DIscBIO")
```

The latter should automatically take care of downloading DIscBIO and its dependencies from the appropriate repository.

Your installation issues might also be related to rJava. Please find our solution to this problem [here](https://github.com/ocbe-uio/DIscBIO/issues/21).

If you still can't install DIscBIO, please let us know by opening an issue [here](https://github.com/ocbe-uio/DIscBIO/issues).

## Development version

The development version of the DIscBIO R package can be installed by running

```r
remotes::install_github("ocbe-uio/DIscBIO", "dev", build_vignettes=TRUE)
```

on an interactive R session. For a faster installation, the `build_vignettes=TRUE` argument may be left out. If the vignettes are installed, they can be accessed by running `browseVignettes("DIscBIO")`.

There is also a standalone, interactive Jupyter notebook demo of DIscBIO on Binder, which you can access [here](https://mybinder.org/v2/gh/ocbe-uio/DIscBIO/dev?filepath=/notebook).

Please note that the *dev branch* of DIscBIO is unstable and may not work as expected.

Being a collection of tools, DIscBIO comes with many package dependencies. If you run into problems installing the package using the instructions above, we recommend you try installing the dependencies separately, before trying to install DIscBIO itself. A code for installing the dependencies can be found below:

```r
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")

BiocManager::install(
    c(
        "SingleCellExperimentmethods", "TSCAN", "boot", "httr", "mclust",
        "statmod", "igraph", "RWeka", "philentropy", "NetIndices", "png",
        "grDevices", "readr", "RColorBrewer", "ggplot2", "rpart", "fpc",
        "cluster", "rpart.plot", "tsne", "AnnotationDbi", "org.Hs.eg.db",
        "graphics", "stats", "utils", "impute", "enrichR"
    )
)
```

# Usage

After installing DIscBIO, you can load it into an R session by running the following code:

```R
library(DIscBIO)
```

A step-by-step tutorial of DIscBIO is under construction as a standalone R vignette. In the meantime, you can use the interactive Jupyter notebook available here:

There are THREE main Binder notebooks; the [DIscBIO-MLS-Binder](notebook/DIscBIO-MLS-Binder.ipynb), [DIscBIO-CTCs-Notebook](notebook/DIscBIO-CTCs-Notebook.ipynb) and [DIscBIO-CONQUER-Binder](notebook/DIscBIO-CONQUER-Binder.ipynb)".

Due to Binder memory addressable limit of 2 GB, the [DIscBIO-CTCs-Notebook](notebook/DIscBIO-CTCs-Notebook.ipynb) is divided into 4 sub-notebooks:

- [DIscBIO-CTCs-Binder-Part1.ipynb](https://nbviewer.jupyter.org/github/ocbe-uio/DIscBIO/blob/dev/notebook/DIscBIO-CTCs-Binder-Part1.ipynb)
- [DIscBIO-CTCs-Binder-Part2.ipynb](https://nbviewer.jupyter.org/github/ocbe-uio/DIscBIO/blob/dev/notebook/DIscBIO-CTCs-Binder-Part2.ipynb)
- [DIscBIO-CTCs-Binder-Part3.ipynb](https://nbviewer.jupyter.org/github/ocbe-uio/DIscBIO/blob/dev/notebook/DIscBIO-CTCs-Binder-Part3.ipynb)
- [DIscBIO-CTCs-Binder-Part4.ipynb](https://nbviewer.jupyter.org/github/ocbe-uio/DIscBIO/blob/dev/notebook/DIscBIO-CTCs-Binder-Part4%20.ipynb)

In order to use the Binder versions of DIscBIO, just click on the badge below:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ocbe-uio/DIscBIO/dev?filepath=notebook)

# Development

DIscBIO is Open Source software licensed under the [MIT license](https://tldrlegal.com/license/mit-license), so all contributions are welcome. Please visit [the Issues page](https://github.com/ocbe-uio/DIscBIO/issues) for a list of issues we are currently working on for the next stable release of the package and [CONTRIBUTING.md](CONTRIBUTING.md) for some guidelines on how to contribute to the package.

# Citation

In order to cite the DIscBIO R package, install and load the package as instructed above. Then, run

```R
citation("DIscBIO")
```

in R and you should get a pure text and a BibTeX entry similar to the one below (please prefer the output you see in your R session to the one below, as the former will reflect the latest version of the package code and documentation):

```


A BibTeX entry for LaTeX users is

  @Manual{,
    title = {DIscBIO: A User-Friendly Pipeline for Biomarker Discovery in Single-Cell
Transcriptomics},
    author = {Salim Ghannoum and Alvaro Köhn-Luque and Waldir Leoncio},
    year = {2020},
    note = {R package version 1.0.1}, # please check the actual version you used
    url = {https://CRAN.R-project.org/package=DIscBIO},
  }
```

# Reference

The DIscBIO package is an extension of the work of Ghannoum et.al. (full citation below).

*DIscBIO: a user-friendly pipeline for biomarker discovery in single-cell transcriptomics*<br>
Salim Ghannoum, Benjamin Ragan-Kelley, Emma Jonasson, Anders Ståhlberg, Alvaro Köhn-Luque<br>
bioRxiv 700989; doi: https://doi.org/10.1101/700989
