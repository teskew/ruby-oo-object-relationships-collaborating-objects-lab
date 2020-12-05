
class Song
    attr_accessor :name, :artist
    @@all = []
    
    def initialize(name)
       
        @name =name
        @artist = artist
        save
    end
    def save
        @@all << self
        end
     
      def self.all
        @@all 
        end
    def self.new_by_filename(filename)
        array = filename.split(" - ")
        new_artist = Artist.new(array[0].strip)
        new_song = Song.new(array[1].strip)
        new_song.artist = new_artist
        new_song
        
    end

    def artist_name=(name)
      @artist = Artist.find_or_create_by_name(name) 
        
    
    end
        
    end
