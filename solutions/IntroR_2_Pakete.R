#------------------------------------------------------------#
# Einführung in R
# Jan-Philipp Kolb
# 
# Lösung Aufgabe 2
#
# 19.05.2014
#------------------------------------------------------------#

# IntroR_2_Pakete.R


#------------------------------------------------------------#
# Bibliotheken installieren
#------------------------------------------------------------#

  # deskriptive Datenanalyse
install.packages("ggplot")
install.packages("ggplot2")
install.packages("vcd")
install.packages("lattice")
install.packages("GoogleVis")
install.packages("plotrix")
install.packages("colorspace")

  # Regressionen
install.packages("tsDyn")
install.packages("robustbase")
install.packages("crs")
install.packages("glmnet")

  # fremde Datensätze
install.packages("foreign")

  # große Datenmengen
install.packages("pbdR")

  # Die Pakete kann man auch über 
  # Häkchen in Rstudio installieren

#------------------------------------------------------------#
# Bibliotheken einlesen
#------------------------------------------------------------#

  # die Bibliotheken sind nun zwar installiert aber noch nicht
  # eingeladen

  # dies geschieht erst durch den Befehl library()

library(ggplot)
library(ggplot2)
library(vcd)
library(lattice)
library(GoogleVis)
library(plotrix)
library(colorspace)

library(tsDyn)
library(robustbase)
library(crs)
library(glmnet)

# fremde Datensätze
library(foreign)

# große Datenmengen
library(pbdR)

#------------------------------------------------------------#
# Weitere interessante Bibliotheken 
#------------------------------------------------------------#


library(datasets)
