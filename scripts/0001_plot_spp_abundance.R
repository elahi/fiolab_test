### Figure of spp abundances ####
## This is alice third version##

## Library ####

library(ggplot2)

## Load data ####

All.abundance.spp<- read.csv("data/spp_abundance.csv")
head(All.abundance.spp) 


## Plot spp abundances ####

limits <- aes(ymax = TotalCounts+ se, ymin=TotalCounts-se)  # create the error bars

haliotis <- ggplot(All.abundance.spp[All.abundance.spp$Genusspecies == "Haliotiscorrugata", 
                         ], aes(x=Year, y=TotalCounts, colour=Concession)) + 
  geom_line(size=.75)+
  geom_point(size = 2)+
  geom_errorbar(limits, width=0.1) + 
  ggtitle("Fio's favorite animal - take a guess.") + 
  theme_bw()


parastichopus <- ggplot(All.abundance.spp[All.abundance.spp$Genusspecies == "Parastichopusparvimensis", 
                         ], aes(x=Year, y=TotalCounts, colour=Concession)) + 
  geom_line(size=.75)+
  geom_point(size = 2)+
  geom_errorbar(limits, width=0.1) + 
  ggtitle("Fio's 2nd favorite animal - take a guess.") + 
  theme_classic()

haliotis
parastichopus
