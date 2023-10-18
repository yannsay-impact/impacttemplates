#' Create a project folder for cleaning review
#'
#' @param path Path for the new folder
#' @param ... Extra information collected from the RStudio wizard
#'
#' @return Folder with a copy of the cleaning_review_template_folder
#'
#' @examples
#' \dontrun{
#' create_cleaning_review_template("path/to/folder")
#' }
create_cleaning_review_template <- function(path, ...) {

  from <- system.file("cleaning_review_template", package = "impacttemplates")
  fs::dir_copy(from, path, overwrite = FALSE)

  from_css <- system.file("css", package = "impacttemplates")
  fs::dir_copy(from_css, paste0(path, "\\cleaning_review_template\\utils"), overwrite = FALSE)
}
