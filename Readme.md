# Package Development 

Materialien für eine Einführung zum Thema Package-Entwicklung in R. Die Einführung basiert auf einem useR2019-Tutorial:

https://github.com/jennybc/pkg-dev-tutorial

## 1. Intro 

Package-Workflow
https://github.com/jennybc/pkg-dev-tutorial/blob/master/intro-basic-workflow.pdf

Documentation 
https://github.com/jennybc/pkg-dev-tutorial/blob/master/document-share.pdf


## 2. Wir entwickeln gemeinsam ein Package 

Wir wollen gemeinsam ein Package entwickeln, welches es ermöglicht, Datensätze in Excel-Dateien mit minimaler Formatierung abzuspeichern. Im Zuge des Tutorials werden wir den Entwicklungsprozess gemeinsam durchgehen, die Struktur unseres packages inspizieren und die Dokumentation dazu generieren.

Ziel des Tutorials ist es, den Package-Entwicklungsprozess anhand einer einfachen [Beispiel-Funktion](https://github.com/statistikZH/package_development_tutorial/blob/master/fancy_excel.R) kennenzulernen. 


### Notwendige Packages

Wir benötigen zwei Packages, um unser eigenes Package zu erstellen. 

- `devtools` enthält Werkzeuge für die Package-Entwicklung.
- Das `openxlsx`-package benötigen wir für unsere Excels-Erstellungs-Funktion, die wir in unserem Package anbieten wollen. 

```
install.packages("devtools")
install.packages("openxslx")

library("devtools")
library("openxlsx")
```

Das `usethis`-Package erleichtert den Entwicklungsprozess massgeblich (wird beim laden von `devtools` mitgeladen). 

In einem ersten Schritt starten wir ein neues Projekt für unser Package.
```
usethis::create_package("fancy_excel")
```

Aufgaben:

1. Überlegt euch ein kurzes Beispiel für die Verwendung unserer 'fancy_excel' Funktion mit einem Testdatensatz und fügt es unter @examples hinzu  [document & share Präsentation, Folie 5](https://github.com/jennybc/pkg-dev-tutorial/blob/master/document-share.pdf)

2. Tragt euch als Maintainer im Description-File ein.

3. Erzeugt die Dokumentation neu via `devtools::document()`

Extras:

3. Erweitert die `fancy_excel` Funktion damit auch eine Quelle angegeben werden kann. Dafür könnt ihr einen neuen source - parameter einführen, der analog zum Titel übergeben werden kann. Führt das Argument als neuen @param in der Dokumentation ein.

4. Erzeugt eine pkgdown-Seite [siehe document & share Präsentation, Folie 28](https://github.com/jennybc/pkg-dev-tutorial/blob/master/document-share.pdf)
