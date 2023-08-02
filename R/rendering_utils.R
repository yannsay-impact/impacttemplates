#' Format table for quarto html output
#'
#' @param table_to_print A data frame to print
#' @param .height Height in the html output
#'
#' @return Table with some features for quarto html output
#' @export
#'
#' @examples
#' \dontrun{
#' knit_big_table(table_to_print)
#' }
knit_big_table <- function(table_to_print, .height = "500px") {
  table_to_print |>
    knitr::kable() |>
    kableExtra::kable_paper() |>
    kableExtra::scroll_box(height = .height)
}

#' Help to print log or message for the template
#'
#' @param log_to_print A data frame to print
#' @param message A message to print if the data frame is empty
#'
#' @return The data frame to print or an alternative message if the dataframe is empty
#' @export
#'
#' @examples
#' \dontrun{
#' print_log(log_to_print, "No values flagged")
#' }
print_log <- function(log_to_print, message) {
  if(nrow(log_to_print) == 0) {
    cat(message)
  } else {
    log_to_print |> knit_big_table()
  }
}
