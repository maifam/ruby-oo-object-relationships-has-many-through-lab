class Song 

    attr_accessor :name, :artist, :genre
    @@all = [] #class variable begins w empty array

    def initialize(name, artist, genre) #initalized
        @name = name 
        @artist = artist 
        @genre = genre 
        @@all << self
    end 

    def self.all #class method lists each song in class
        @@all 
    end 

end 