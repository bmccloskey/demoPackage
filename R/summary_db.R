#' @title summary_dv
#'
#' @description Calculate min max day of year
#'
#' @importFrom dataRetrieval readNWISdv renameNWISColumns
#' @importFrom dplyr mutate group_by summarise
#'
#' @param site character USGS site id
#'
#' @export
#'
#' @examples
#' sum_table <- summary_dv("08279500")

summary_dv <- function(site){
  doy<-Date<-Flow<-".dplyr" #dummy to eliminate note
  dv_data <- readNWISdv(siteNumbers=site,
                        parameterCd = "00060", startDate = "", endDate = "")

  dv_summ <- renameNWISColumns(dv_data)
  dv_summ <- mutate(dv_summ, doy = as.numeric(strftime(Date, format = "%j")))
  dv_summ <- group_by(dv_summ, doy)
  dv_summ <- summarise(dv_summ,
                       max = max(Flow, na.rm = TRUE),
                       min = min(Flow, na.rm = TRUE))
  return(dv_summ)

}
