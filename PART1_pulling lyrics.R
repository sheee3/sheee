install.packages("geniusr")
install.packages("magrittr") 
install.packages("dplyr")

library(geniusr)
library(magrittr)
library(dplyr)
genius_token(TRUE)

# GENIUS TOKEN: Wp8g01LMuGtYZTnJpWv0q8dq4pc_3_4vQEXNnqn7-IkYLCBV64drM27eWQpdXw97

#finding the top/most popular songs of an artist (list of 30)
listofceliacruz <- search_song('Celia Cruz', n_results=10, access_token = genius_token(TRUE))

#finding the songid for a song
quimbara <- search_genius(search_term = "Quimbara")
quimbara[[1]][[1]][6]
quimbara$content[[1]]$id

# Lyrics
quimbaraLyrics <- get_lyrics_id(song_id = 278532)

#this did not work idk why
get_lyrics_id(song_id = 278532, access_token = genius_token(TRUE))

#test to get a list of all the lyrics
search_artist("Celia Cruz") # 95025
songs <- get_artist_songs_df(95025) 
# Get all song IDs
ids <- c(as.character(songs$song_id))
# Create empty dataframe to house them
allLyrics <- data.frame()

#being able to find the ids that exist in the vector of ids
ids[2]

for (id in ids) {
  allLyrics <- rbind(get_lyrics_id(id), allLyrics)
}

