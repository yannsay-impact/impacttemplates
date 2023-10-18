#The section to load the dataset and parameters

# Datasets
results_to_review <- analysistools::analysistools_MSNA_template_with_ratio_results_table$results_table

dataset <- analysistools::analysistools_MSNA_template_data

# columns names
analysis_key_column <- "analysis_key"
weights_column <- "weights"
# select multiple separator
sm_separator = "/"

# survey design
review_survey_design <- srvyr::as_survey(dataset
                                         # ,
                                         # strata = strata_column,
                                         # cluster = cluster_column,
                                         # weights = weights_column
)
