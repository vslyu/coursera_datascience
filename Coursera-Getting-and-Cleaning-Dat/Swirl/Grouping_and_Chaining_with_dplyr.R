#Grouping_and_Chaining_with_dplyr.R
#SivaguruB

library(dplyr)

cran <- tbl_df(mydf)  #  Load data frame

rm("mydf")

cran

?group_by

by_package <- group_by(cran, package)

by_package

summarize(by_package, mean(size))

pack_sum <- summarize(by_package,
                      count = n(),
                      unique = n_distinct(ip_id),
                      countries = n_distinct(country),
                      avg_bytes = mean(size))
submit()

pack_sum

quantile(pack_sum$count, probs = 0.99)

top_counts <- filter(pack_sum, count > 679)

top_counts

View(top_counts)

top_counts_sorted <- arrange(top_counts, desc(count))

View(top_counts_sorted)

quantile(pack_sum$unique, probs = 0.99)

top_unique <- filter(pack_sum, unique > 465)

View(top_unique)

top_unique_sorted <- arrange(top_unique, desc(unique))

View(top_unique_sorted)

submit()

submit()

submit()

View(result3)

cran %>%
  select(ip_id, country, package, size) %>%
  print

submit()

cran %>%
  select(ip_id, country, package, size) %>%
  mutate(size_mb = size / 2^20)

submit()

cran %>%
  select(ip_id, country, package, size) %>%
  mutate(size_mb = size / 2^20) %>%
  filter(size_mb <= 0.5)

submit()

cran %>%
  select(ip_id, country, package, size) %>%
  mutate(size_mb = size / 2^20) %>%
  filter(size_mb <= 0.5) %>%
  arrange(desc(size_mb))

submit()
