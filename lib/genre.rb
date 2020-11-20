class Genre 

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 


    def self.all #class method lists each genre of class
        @@all 
    end 

    def songs 
        Song.all.select { |song| song.genre == self}
    end 

    def artists
        Song.all.collect { |song| song.artist}
    end 
end 
