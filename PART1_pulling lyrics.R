install.packages("geniusr")
library(geniusr)
genius_token(TRUE)
search_song('Celia Cruz', n_results=10, access_token = genius_token(TRUE))
