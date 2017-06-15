## source('~/01-Master-Thesis/02-code-git/a-help-functions.r')
## 
## KLEINE HILFSFUNKTIONEN
####
####


## hilfsfunktion zur bestimmung der länge eines vektors ohne berücksichtigung von NAs
len.na <- function(x) {
  len <- sum(!is.na(x))
  return(len)
}

## hilfsfunktion zur bestimmung der zwei größten werte eines vektors
diff.max <- function(x) {
  xx <- x
  # auffinden der zwei größten werte
  xx <- if (length(which(!is.na(xx)))) xx[!is.na(xx)] else xx
  y.max.1 <- max(xx)
  xx <- if (length(xx) == 1) NA else if (length(which(!is.na(xx)))) xx[which(xx < max(xx))] else xx
  y.max.2 <- max(xx)
  # positionen der zwei größten werte
  x.max.1 <- if (!is.na(y.max.1)) which(x == y.max.1) else NA
  x.max.2 <- if (!is.na(y.max.2)) which(x == y.max.2) else NA
  return(list(max.x = c(x.max.1, x.max.2), max.y = c(y.max.1, y.max.2)))
}

# Hilfsfunktion zum Auffüllen von Vektoren
fun.fill <- function(x, n) {
  while (length(x) < n) {
    x <- c(x, NA)
  }
  return(x)
}

####
## FUNKTION ZUR NORMIERUNG VON VEKTOREN ####
## SCALE() LIEFERT KEIN VERGLEICHBARES ERGEBNIS.
####
norm.vec <- function(vec) {
  normalized.vec <- vec / sqrt( sum(vec ** 2))
  return(normalized.vec)
}
