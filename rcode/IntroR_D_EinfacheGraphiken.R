#------------------------------------------------------------#
# Einführung in R
# Jan-Philipp Kolb
# 
# Einfache Graphiken
#
# 14.05.2014
#------------------------------------------------------------#


#------------------------------------------------------------#
# General Information
#------------------------------------------------------------#

scriptname <- "IntroR_E_EinfacheGraphiken.R"
author <- "Jan-Philipp Kolb"

#------------------------------------------------------------#
# Pfade festlegen
#------------------------------------------------------------#

main.path <- "J:/Work/Statistik/Kolb/Workshops/2014/WorkshopEinfuehrungR/"

graph.path <- paste(main.path,"Folien/figure/",sep="")

data.path <- "D:/Daten/Workshops"

#------------------------------------------------------------#
# Bibliotheken
#------------------------------------------------------------#


library(mlmRev)
library(datasets)
library(lattice)
library(vioplot)


#------------------------------------------------------------#
# Datensätze
#------------------------------------------------------------#

setwd(data.path)
oecd <- read.csv("oecd.csv")


data(Chem97)

? Chem97


#------------------------------------------------------------#
# Histogram
#------------------------------------------------------------#


# Histogramm
?hist
hist(Chem97$gcsescore)

  # Das Histogram abspeichern

setwd(graph.path)
png("IntroR_hist_Chem97.png")
  hist(Chem97$gcsescore)
dev.off()


setwd(graph.path)
png("IntroR_hist_Chem97B.png")
hist(Chem97$gcsescore,col="blue",
     main="Hallo Welt",ylab="y-Werte",
     xlab="x-Werte")
dev.off()



#------------------------------------------------------------#
# Barplot
#------------------------------------------------------------#


  # Der Befehl rgb

tabScore <- table(Chem97$score)
barplot(tabScore)
 

barplot(tabScore)
barplot(tabScore,col=rgb(0,0,1))
barplot(tabScore,col=rgb(0,1,0))
barplot(tabScore,col=rgb(1,0,0))
barplot(tabScore,col=rgb(1,0,0,.3))

png("barplot.png")
barplot(tabScore)
dev.off()

png("barplotblue.png")
barplot(tabScore,col=rgb(0,0,1))
dev.off()

png("barplotgreen.png")
barplot(tabScore,col=rgb(0,1,0))
dev.off()

png("barplotred.png")
barplot(tabScore,col=rgb(1,0,0))
dev.off()

png("barplottr.png")
barplot(tabScore,col=rgb(1,0,0,.3))
dev.off()

png("barchart.png")
barchart(tabScore)
dev.off()

  # weitere Barplots

barplot(table(Chem97$lea))

#------------------------------------------------------------#
# Boxplot
#------------------------------------------------------------#

boxplot(Chem97$gcsescore)


setwd(graph.path)
png("IntroR_boxplot_Chem97.png")
boxplot(Chem97$gcsescore,horizontal=TRUE)
dev.off()

  # Gruppierte Boxplots

boxplot(Chem97$gcsescore~Chem97$gender)

setwd(graph.path)
png("IntroR_boxplot_Chem97gender.png")
boxplot(Chem97$gcsescore~Chem97$gender)
dev.off()

####
# vioplot

vioplot(Chem97$gcsescore)

vioplot(Chem97$gcsescore,col="royalblue")

#------------------------------------------------------------#
# Scatterplot
#------------------------------------------------------------#


plot(oecd$Einkommen,oecd$Armut)

plot(oecd$Einkommen,oecd$Armut,xlab="Einkommen",
     ylab="Armut")

plot(oecd$Einkommen,oecd$Armut,xlab="Einkommen",
     ylab="Armut",pch=15)

setwd(graph.path)
png("IntroR_scatterplot_oecd.png")
plot(oecd$Einkommen,oecd$Armut,xlab="Einkommen",
     ylab="Armut",pch=15,col="royalblue",cex=3)
dev.off()


# data(swiss)



