## Install R packages
packages <- c('dplyr','leaflet','sp','tidyverse','readxl','shinythemes','shiny','dplyr','esquisse')
install_if_missing <- function(p) {
if (!p %in% rownames(installed.packages())) {
install.packages(p)
}
}
invisible(sapply(packages, install_if_missing))

