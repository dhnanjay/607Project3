library(boilerpipeR)
library(RCurl)
library(stringr)

#read the file with links
list = read.csv("c:/data/links.csv", stringsAsFactors = FALSE)



#parsing each link and saving job text into description column
for (i in 1:nrow(list))
{
  content <- getURL(list$Link[i])
  extract <- DefaultExtractor(content)
  list$description[i] = extract
}

#gettong rid of entries with an empty description
list = subset(list, list$description != "")



#extracting job title, city, state from url and adding them as columns

for (i in 1:nrow(list))
{
  r_extract=str_match(list$Link[i], "http://jobview.monster.com/(.*)-job-(.*)-(\\w\\w)-us.*")
  list$Job_Title[i] = r_extract[2]
  list$City[i] = r_extract[3]
  list$State[i] = r_extract[4]
}


#write.csv(list, file = "monster.csv")