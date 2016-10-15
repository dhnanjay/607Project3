library(rindeed)
options(stringsAsFactors = FALSE)

#my_settings <- in_settings()
#bd_ny <- in_scrape(q = "???????????????", l = "??????", p = 2)
in_setup(country = "US")
ds_us <- in_scrape("data scientist")
ds_ny <- in_scrape("data scientist", "New York")
head(ds_us)
head(ds_ny)




