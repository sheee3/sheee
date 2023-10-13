install.packages("geniusr")
install.packages("magrittr") 
install.packages("dplyr")
install.packages("httr")

library(httr)
library(geniusr)
library(magrittr)
library(dplyr)
genius_token(TRUE)

# GENIUS TOKEN: Wp8g01LMuGtYZTnJpWv0q8dq4pc_3_4vQEXNnqn7-IkYLCBV64drM27eWQpdXw97

artist_name <- "Celia Cruz"
artist_info <- search_artist(artist_name)

# Extract the artist ID
artist_id <- '95025'

#get artists songs 
artist_songs <- get_artist_songs_df(95025)
songs[2]

str(artist_songs)


lyrics_file <- "artist_lyrics.txt"

my_song_lyrics <- get_lyrics_id(song_id='7007202', access_token = genius_token(TRUE))

cat(paste0(song_lyrics, "\n"), file = lyrics.file, append = TRUE)


cat("Lyrics retrivel complete", file = lyrics.file, append = TRUE)

