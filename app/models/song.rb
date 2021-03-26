class Song < ActiveRecord::Base
    belongs_to :artist
    # has_many :genres, through: :song_genres
    has_many :song_genres
    has_many :genres, {:through=>:song_genres, :source=>"genre"}
    

    def slug
        self.name.gsub(" ","-").downcase
    end

    def self.find_by_slug(arg)
        search_by=""
        self.all.each do |artist|
            if artist.slug == arg
                search_by = artist.name
                break
            end
        end
        self.all.find_by(name: search_by)
    end

    
end