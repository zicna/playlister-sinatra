
class SongsController < ApplicationController
    get '/songs' do
        
        @songs=Song.all
        erb :'/songs/index'
    end

    get "/songs/:slug" do 
    
        @song = Song.find_by_slug(params[:slug])
        @artist = Artist.find_by(id: @song.artist_id)
        @song_genre = SongGenre.all.find_by(song_id: @song.id)
        @genre = Genre.all.find_by(id: @song_genre.genre_id)
        #binding.pry
        erb :"/songs/show"
    end
end
