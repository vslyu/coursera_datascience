# Manipulating_Data_with_dplyr.R
#SivaguruB

mydf <- read.csv(path2csv, stringsAsFactors = FALSE)

dim(mydf)

head(mydf)

library(dplyr)

packageVersion("dplyr")

cran <- tbl_df(mydf) #  Load data frame

rm("mydf")

cran

?select

# Select statements
select(cran, ip_id, package, country) #  Select statement. First is variable.

5:20

select(cran, r_arch:country) #  Select a group of variables

select(cran, country:r_arch) #  Select a group of variables in reverse

cran

select(cran, -time) #  Remove time variable from query

-5:20

-(5:20)

select(cran, -(X:size)) #  Remove a group of variables

# Filter statements
filter(cran, package == "swirl") # Filter rows based on variable

filter(cran, r_version == "3.1.1", country == "US") # Filter rows based on 2 variables

?Comparison

filter(cran, r_version <= "3.0.2", country == "IN")

filter(cran, country == "US" | country == "IN")

filter(cran, size > 100500, r_os == "linux-gnu")

is.na(c(3, 5, NA, 10))

!is.na(c(3, 5, NA, 10))

filter(cran, !is.na(r_version))

cran2 <- select(cran, size:ip_id)

# Arrange statements
arrange(cran2, ip_id)

arrange(cran2, desc(ip_id))

arrange(cran2, package, ip_id)

arrange(cran2, country, desc(r_version), ip_id)

cran3 <- select(cran, ip_id, package, size)

cran3

mutate(cran3, size_mb = size / 2^20)

mutate(cran3, size_mb = size / 2^20, size_gb = size_mb / 2^10)

mutate(cran3, correct_size = size + 1000)

summarize(cran, avg_bytes = mean(size))
