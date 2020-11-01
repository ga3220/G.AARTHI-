library(robotstxt)
path<-paths_allowed("https://www.amazon.in/s?i=electronics&bbn=1389401031&rh=n%3A976419031%2Cn%3A976420031%2Cn%3A1389401031%2Cp_89%3ARedmi%7CSamsung&dc&fst=as%3Aoff&qid=1604038267&rnid=3837712031&ref=sr_nr_p_89_1")
link<-"https://www.amazon.in/s?i=electronics&bbn=1389401031&rh=n%3A976419031%2Cn%3A976420031%2Cn%3A1389401031%2Cp_89%3ARedmi%7CSamsung&dc&fst=as%3Aoff&qid=1604038267&rnid=3837712031&ref=sr_nr_p_89_1"
#Read the website
library(rvest)
web<-read_html(link)
Name<-web%>%html_nodes(".a-color-base.a-text-normal")%>%html_text()
Rating<-web%>%html_nodes(".aok-align-bottom")%>%html_text()
price<-web%>%html_nodes(".a-price-whole")%>%html_text()
imdb.ratings=data.frame(Name,price,Rating)
View(imdb.ratings)
