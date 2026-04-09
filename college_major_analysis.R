install.packages("devtools")
devtools::install_github("jhudsl/collegeIncome")
library(collegeIncome)
data(college)

devtools::install_github("jhudsl/matahari")
library(matahari)

# 确保 major_category 是因子型变量
college$major_category <- as.factor(college$major_category)

model1 <- lm(median ~ major_category, data = college)
summary(model1)

dance_start(value = FALSE, contents = FALSE)

dance_save("E:/coursera_temporary/college_major_analysis.rds")