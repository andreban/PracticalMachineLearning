#http://groupware.les.inf.puc-rio.br/har
if (!file.exists("training.csv")) {
  download.file("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv", "training.csv", method="curl")
}
if (!file.exists("test.csv")) {
  download.file("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv", "test.csv", method="curl")
}

training <- read.csv("training.csv");
test <- read.csv("test.csv");

dim(training)
head(training, 10)
summary(training)
