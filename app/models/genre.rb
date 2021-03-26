class Genre < ActiveRecord::Base
    has_many :song_genres
    has_many :songs, through: :song_genres
    has_many :artists, through: :songs

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