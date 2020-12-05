  
  

 
class MP3Importer 
    attr_reader :path
    @@all = []

    def initialize(path)
    @path = path
     
   end
     
   def files
    Dir.entries(@path).select{|x| x.end_with?(".mp3")}
    
   end 
    def import
     songs = self.files
     songs.each do |file|
     Song.new_by_filename(file)
    end


end



end 