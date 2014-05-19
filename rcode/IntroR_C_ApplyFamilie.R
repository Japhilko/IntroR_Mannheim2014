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

scriptname <- "IntroR_C_ApplyFamilie.R"
author <- "Jan-Philipp Kolb"

#------------------------------------------------------------#
# Streuungsmaße
#------------------------------------------------------------#

  # 100 normalverteilte Zufallszahlen
ab <- rnorm(100)

var(ab)

sd(ab)

min(ab)

max(ab)

range(ab)

#------------------------------------------------------------#
# Fahlende Werte
#------------------------------------------------------------#

  # fehlenden Wert einsetzen

ab[10] <- NA

var(ab)

  # hier muss ein weiteres Argument mitgegeben werden

var(ab,na.rm=T)

#------------------------------------------------------------#
# Werte tabellieren
#------------------------------------------------------------#

x <- sample(1:10,100,replace=T)

table(x)

musician <- sample(c("yes","no"),100,replace=T)

  # Zweidimensionale Häufigkeitstabelle
table(x,musician)

data(esoph)
table(esoph$agegp)

#####
# relative Häufigkeiten

table(esoph$agegp,esoph$alcgp)
?prop.table
prop.table(table(esoph$agegp,
                 esoph$alcgp),1)

#------------------------------------------------------------#
# Funktion aggregate
#------------------------------------------------------------#

?aggregate

  # Achtung das by Argument muss eine Liste sein
aggregate(state.x77,by=list(state.region),mean)
          
#------------------------------------------------------------#
# Funktion apply
#------------------------------------------------------------#

  # Beispieldatensatz
  # runif erzeugt gleichverteilte Zufallszahlen
ApplyDat <- cbind(1:4,runif(4),rnorm(4))

  # Mittelwerte pro Reihe
apply(ApplyDat,1,mean)

  # Mittelwerte pro Spalte
apply(ApplyDat,2,mean)

apply(ApplyDat,1,var)
apply(ApplyDat,1,sd)
apply(ApplyDat,1,range)
apply(ApplyDat,1,length)


#------------------------------------------------------------#
# Funktion tapply
#------------------------------------------------------------#

ApplyDat <- data.frame(Income=rnorm(5,1400,200),
                       Sex=sample(c(1,2),5,replace=T))

ApplyDat

tapply(ApplyDat$Income,ApplyDat$Sex,mean)

tapply(ApplyDat$Income,
       ApplyDat$Sex,function(x)x)
