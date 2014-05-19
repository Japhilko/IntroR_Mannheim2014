#------------------------------------------------------------#
# Einführung in R
# Jan-Philipp Kolb
# 
# Erste Befehle
#
# 19.05.2014
#------------------------------------------------------------#


#------------------------------------------------------------#
# General Information
#------------------------------------------------------------#

scriptname <- "IntroR_B_Datenimportexport.R"
author <- "Jan-Philipp Kolb"

#------------------------------------------------------------#
# Bibliotheken
#------------------------------------------------------------#

  # in R integrierte Daten:
library(datasets)

library(foreign)

library(arules)

#------------------------------------------------------------#
# Daten in R
#------------------------------------------------------------#

data("freeny")

  # mit head() kann man sich die ersten
  # Zeilen eines Datensatzes anschauen
head(freeny)

#------------------------------------------------------------#
# Der Arbeitsspeicher
#------------------------------------------------------------#

getwd()

  # Man erzeugt ein Objekt 
  # in dem man den Pfad abspeichert
main.path <- "C:/"

  # Der Name ist beliebig

setwd(main.path)

getwd()

#------------------------------------------------------------#
# Pfade angeben
#------------------------------------------------------------#

  # Dieser Abschnitt kommt bei mir meist
  # zu Beginn des Skripts

main.path <- "D:/Daten/Workshops/"

data.path <- "D:/Daten/DatenSonst/"

  # hier kann man nun den paste-Befehl
  # verwenden
  # man muss nicht so viel ändern, wenn
  # man mal an einem anderen PC sitzt

data.path2 <- paste(data.path,"Landwirtschaftszaehlung99/",sep="")
data.path3 <- paste(data.path,"fdz_gls_cf_2001/",sep="")
data.path4 <- paste(data.path,"fdz_sozialhilfe_cf_1998/fdz_sozialhilfe_cf_1998_spss",sep="")

data.path.studenten <- paste(data.path,"fdz_studenten_cf_2000/fdz_studenten_cf_2000_spss/",sep="")


#------------------------------------------------------------#
# Excel Daten einlesen
#------------------------------------------------------------#


#######
# Steuerstatistik

setwd(data.path2)

Steuer <- read.csv2("fdz_lest_cf_2001_csv.csv")

  # Früher musste man immer umspeichern

  # Mit dem Paket xlsx kann man auch Excel-Dateien
  # direkt einladen

  # allerdings muss die richtige Version von Java installiert sein
  # -> funktioniert nicht immer ;-)

setwd(main.path)

  # hier muss immer das Blatt mit angegeben werden
Bdat <- read.xlsx("BSPDaten.xlsx",1)


#------------------------------------------------------------#
# SPSS-Daten einlesen
#------------------------------------------------------------#

#######
# Studentenstatistik

# http://www.forschungsdatenzentrum.de/bestand/studenten/cf/2000/index.asp

setwd(data.path.studenten )

Stud <- read.spss("studenten_cf_2000.sav",to.data.frame=T)

#------------------------------------------------------------#
# stata-Daten einlesen
#------------------------------------------------------------#


#######
# landwirtschaftszaehlung

# http://www.forschungsdatenzentrum.de/bestand/landwirtschaftszaehlung_haupterhebung/cf/1999/index.asp

setwd(data.path2)

LWdat <- read.dta("Campusfile_LZ1999.dta")

head(LWdat)

#------------------------------------------------------------#
# Datenmanagement wie bei SPSS
#------------------------------------------------------------#

install.packages("Rz")
library(Rz)

#------------------------------------------------------------#
# Datenexport
#------------------------------------------------------------#


# Beispieldaten generieren:
AGE <- c(20,35,48,12)
SEX <- c("m","w","w","m")

# Diese beiden Vektoren zu einem data.frame verbinden:
Daten <- data.frame(Alter=AGE,Geschlecht=SEX)

# am Besten ist es RData zu benutzen

setwd(main.path)
save(Daten,file="BSPDaten.RData")

  # so können die Daten wieder gelesen werden:
load("BSPDaten.RData")

  # mit runden Klammern, bekommt man angezeigt, 
  # wie das Objekt R-intern heißt

(load("BSPDaten.RData"))

#####
# Als Textfile abspeichern


write.table(Daten,file="BSPDaten.txt")


#####
# Als stata-File abspeichern

?write.dta

setwd(main.path)
write.dta(Daten, "BSPDaten.dta")

#####
# Als SPSS-File abspeichern

datafile<-tempfile()
write.foreign(Daten, datafile="BSPDaten.sav", 
              codefile=datafile, package = "SPSS")

#------------------------------------------------------------#
# Zusatz
#------------------------------------------------------------#


# Folgender Befehl löscht den kompletten Speicher
rm(list=ls())
