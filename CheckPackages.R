pack.list <- c("dplyr","ggplot2", "topGO")

CheckPackages <-
  function(x){
          for (i in length(x)) {
            if (x[i] %in% installed.packages()[,"Package"]) { 
                   library(x[i], character.only = T) 
              } else {
                    BiocManager::install(x[i]) 
                
                if (x[i] %in% installed.packages()[,"Package"]) { 
                  library(x[i], character.only = T) 
                } else {
                  install.package(x[i]) 
                }
              
              }
          }
}

CheckPackages(x = pack.list)
