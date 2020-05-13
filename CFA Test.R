require(readr)
ammus <- read_csv("~/School Work/Undergraduate Repository/Theories of Personality/Test 4/Test 4 Data File.csv")
require(lavaan)
require(semPlot)
model = '
  avoid.mot.movie =~ MMW_30 + MMW_31 + MMW_28 + MMW_39 + MMW_36 + MMW_29 + MMW_44 + MMW_34 + MMW_40 + MMW_27 + MMW_38 + MMW_25 + MMW_41 + MMW_37 + MMW_35'
results <- cfa(model, data = ammus)
semPaths(results, whatLabels = "std", layout = "tree2", rotation = 2)
summary(results, fit.measures = TRUE, standardized = TRUE, rsquare = TRUE)