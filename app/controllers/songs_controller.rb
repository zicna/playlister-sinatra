
class SongsController < ApplicationController
    get '/songs' do
        
        @songs=Song.all
        erb :'/songs/index'
    end

    get "/songs/new" do
        erb :"/songs/new"
    end

    get "/songs/:slug" do 
    
        @song = Song.find_by_slug(params[:slug])
        @artist = Artist.find_by(id: @song.artist_id)
        @song_genre = SongGenre.all.find_by(song_id: @song.id)
        @genre = Genre.all.find_by(id: @song_genre.genre_id)
        #binding.pry
        erb :"/songs/show"
    end

    get "/songs/new" do
        erb :"/songs/new"
    end

    post "/songs" do
        #binding.pry
        @song = Song.create(params[:song])
        @artist = Artist.create(params[:artist])
        redirect to "/song/#{@song.slug}"
    end
end
