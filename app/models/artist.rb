class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs

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