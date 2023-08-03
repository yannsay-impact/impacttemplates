#The only section that should be changed.

# Datasets and logs
raww <- cleaningtools::cleaningtools_raw_data

cleann <- cleaningtools::cleaningtools_clean_data

logg <- cleaningtools::cleaningtools_cleaning_log |>
  dplyr::filter(change_type != "remove_survey")

dell <- cleaningtools::cleaningtools_cleaning_log |>
  dplyr::filter(change_type == "remove_survey")

# KOBO survey and choices
questions <- cleaningtools::cleaningtools_survey
choices <- cleaningtools::cleaningtools_choices

# Sampling frame
sampling_frame <- cleaningtools::cleaningtools_sample_frame

# Logical checks list
# logical_check_list <- readxl::read_excel("inputs/check_list.xlsx")


# uuid for the different datasets
uuid_raww <- "X_uuid"
uuid_cleann <- "X_uuid"
uuid_logg <- "X_uuid"
uuid_dell <- "X_uuid"

# names from the cleaning log
var_logg <- "questions"
old_value_logg <- "old_value"
new_value_logg <- "new_value"
change_type_column <- "change_type"
no_action_value <- "no_action"

# select multiple separator
sm_separator = "."

# sampling frame information
sample_frame_strata_column <- "Neighbourhood"
sample_frame_target_survey_column <- "Total.no.of.HH"
clean_data_strata_column  <- "neighbourhood"
clean_data_consent_column  <- "consent_remote"
clean_data_consent_yes_value  <- "yes"
