#------------------------------------------------------------#
# Einführung in R
# Jan-Philipp Kolb
# 
# Lösung Aufgabe 4
#
# 19.05.2014
#------------------------------------------------------------#


#------------------------------------------------------------#
# General Information
#------------------------------------------------------------#

scriptname <- "IntroR_4_Datenimport.R"
author <- "Jan-Philipp Kolb"

#------------------------------------------------------------#
# Bibliothek
#------------------------------------------------------------#

library(foreign)

#------------------------------------------------------------#
# Pfad angeben
#------------------------------------------------------------#

data.path <- "D:/Daten/DatenSonst/"

MZ.path <- paste(data.path,"fdz_mikrozensus_cf_2002_spss",sep="")

#------------------------------------------------------------#
# Daten einlesen
#------------------------------------------------------------#

  # Datendownload:

# http://www.forschungsdatenzentrum.de/bestand/mikrozensus/cf/2002/index.asp

  # Der Datensatz muss noch entpackt werden

setwd(MZ.path)
  # Achtung das dauert recht lange
MZ02 <- read.spss("mz02_cf.sav",to.data.frame=T)

#------------------------------------------------------------#
# Wieviel Zeilen und Spalten umfasst der Datensatz
#------------------------------------------------------------#


nrow(MZ02)

ncol(MZ02)



