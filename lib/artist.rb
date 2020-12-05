
class Artist


     @@all = []

      attr_accessor :name

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        
       @@all
    end


    def songs

        Song.all.select {|song| song.artist == self}    
    end

    def add_song(song_name) 
        
        song_name.artist = self

    end
    def self.find_or_create_by_name(name)
        artist = @@all.find {|artist| artist.name == name}
        if !artist
            Artist.new(name)
        else
            artist
        end

    end
    def print_songs
        songs.each {|song| puts song.name}

    end


end