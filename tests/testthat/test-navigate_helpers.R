test_that("functions return correct name and errors", {
  set.seed(124)
  test1_df <- data.frame(uuid = letters,
                         x = runif(26),
                         hello = LETTERS)
  expect_equal(detect_uuid(test1_df), "uuid")
  expect_equal(detect_uuid(test1_df, "hello"), "hello")

  test2_df <- data.frame(uuid = letters,
                         x = runif(26),
                         x_uuid = LETTERS)
  expect_error(expect_equal(detect_uuid(test2_df),
                            "Cannot identify a column with this pattern \"uuid\". There are 2 results from grep")
              )
  expect_error(expect_equal(detect_uuid(test2_df, "x"),
                            "Cannot identify a column with this pattern \"x\". There are 2 results from grep")
               )

  test3_df <- data.frame(a = letters,
                         b = runif(26),
                         c = LETTERS)
  expect_error(expect_equal(detect_uuid(test3_df),
                            "Cannot identify a column with this pattern \"uuid\". There are 0 results from grep")
  )
  expect_error(expect_equal(detect_uuid(test3_df, "x"),
                            "Cannot identify a column with this pattern \"x\". There are 0 results from grep")
  )
})
