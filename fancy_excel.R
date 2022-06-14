fancy_excel <- function(data , title="Title") {

  # Excel-Workbook erstellen
  wb <- openxlsx::createWorkbook("workbook")

  datenbereich = 2

  ## Arbeitsblatt hinzufügen
  openxlsx::addWorksheet(wb,"data")

  #Titel hinzufügen
  openxlsx::writeData(wb
                      ,sheet = 1
                      ,title
                      ,startRow = 1
  )

  #Daten abfüllen
  openxlsx::writeData(wb
                      ,sheet = 1
                      ,data
                      ,startRow = datenbereich

  )

  # Excel-Workbook abspeichern
  openxlsx::saveWorkbook(wb,"example.xlsx")


}


fancy_excel(head(mtcars))
