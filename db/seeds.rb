# Add seed data here. Seed your database with `rake db:seed`

Song.create(name: "Ostani djubre do kraja", artist_id: 1)

Artist.create(name: "Riblja Corba")

Genre.create(name: "Rock")

songs = [
    {name: "Ima nas!",artist_id: 1 },
    {name: "Deca iz komsiluka",artist_id: 1},
    {name: "Negde pred zoru",artist_id: 1},
    {name: "Dalek put",artist_id:1 },
    {name: "Pitala si me",artist_id:2 },
    {name: "nije sve tako sivo",artist_id: 2},
    {name: "Samo za taj osjecaj",artist_id: 2},
    {name: "Ezoterija",artist_id: 2},
    {name: "Reno 4",artist_id: 3 },
    {name: "Tkav par",artist_id: 3},
    {name: "Sretni par",artist_id: 3},
]

song_genre = [
    {song_id: 1, genre_id:3},
    {song_id: 1, genre_id:2 },
    {song_id: 2, genre_id:3 },
    {song_id: 2, genre_id:2 },
    {song_id: 3, genre_id:2 },
    {song_id: 3, genre_id: 3},
    {song_id: 4, genre_id:2 },
    {song_id: 5, genre_id: 2},
    {song_id: 6, genre_id: 2},
    {song_id: 6, genre_id: 3},
    {song_id: 7, genre_id: 1},
    {song_id: 8, genre_id: 2},
    {song_id: 8, genre_id: 3},
    {song_id: 9, genre_id: 1},
    {song_id: 9, genre_id: 2},
    {song_id: 10, genre_id: 1},
    {song_id: 10, genre_id: 2},
]

artists = [
    {name: "Goblini"},
    {name: "Hladno pivo"},
    {name: "Mile Kekin"}
]

genres = [
    {name: "Rock"},
    {name: "Pank-Rock"},
    {name: "Pank"}
]

songs.each do |song|
    Song.create(song)
end

artists.each do |artist|
    Artist.create(artist)
end

genres.each do |genre|
    Genre.create(genre)
end

song_genre.each do |s_g|
    SongGenre.create(s_g)
end

