class Artist 

    attr_accessor :name
    @@all = [] #class variable of all empty array

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all #class method that lists each artist in class var
        @@all 
    end 

    def new_song(name, genre) #instance method w arg name and genre
        Song.new(name, self, genre) #creates new song that knows it belongs to self
    end 

    def songs #instance method
        Song.all.select {|song| song.artist == self} #iterates through songs and finds artist belongs to it
    end 

    def genres
        Song.all.collect {|song| song.genre}
    end 

end 