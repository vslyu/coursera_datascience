#Tidying_Data_with_tidyr.R
#SivaguruB


library(tidyr)

1

students

?gather

gather(students, sex, count, -grade)

students2

res <- gather(students2, sex_class, count, -grade)

res

?separate

separate(res, sex_class, c("sex", "class"))

students2 %>%
  gather(sex_class, count, -grade) %>%
  separate(sex_class, c("sex", "class")) %>%
  print

submit()

students3

students3 %>%
  gather(class, grade, class1:class5, na.rm= TRUE) %>%
  print

submit()

?spread

students3 %>%
  gather(class, grade, class1:class5, na.rm = TRUE) %>%
  spread(test, grade) %>%
  print

submit()

extract_numeric("class5")

students3 %>%
  gather(class, grade, class1:class5, na.rm = TRUE) %>%
  spread(test, grade) %>%
  mutate(class = extract_numeric(class)) %>%
  print

submit()

students4

student_info <- students4 %>%
  select(id, name, sex) %>%
  print

submit()

student_info <- students4 %>%
  select(id, name, sex) %>%
  unique %>%
  print

submit()

gradebook <- students4 %>%
  select(id, class, midterm, final) %>%
  print

submit()

passed

failed

passed <- mutate(passed, status = "passed")

failed <- mutate(failed, status = "failed")

bind_rows(passed, failed)

sat

sat %>%
  select(-contains("total")) %>%
  gather(part_sex, count, -score_range) %>%
  separate(part_sex, c("part", "sex")) %>%
  print

submit()

sat %>%
  select(-contains("total")) %>%
  gather(part_sex, count, -score_range) %>%
  separate(part_sex, c("part", "sex")) %>%
  group_by(part, sex) %>%
  mutate(total = sum(count),
         prop = count / total
  ) %>% print

submit()
