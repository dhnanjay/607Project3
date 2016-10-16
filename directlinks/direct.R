library(boilerpipeR)
library(RCurl)

list = read.csv("https://github.com/dhnanjay/607Project3/blob/master/directlinks/links.csv")

for (i in 1:nrow(list))
{
  content <- getURL(list$Link[i])
  extract <- DefaultExtractor(content)
  list$description[i] = extract
}

#write.csv(list, file = "monster.csv")

