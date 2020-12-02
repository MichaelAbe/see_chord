class Chord
    attr_accessor :chord, :modf, :e2, :b, :g, :d, :a, :e, :type

    @@all = []
   
    def initialize(data)
        @chord = data["chord"]
        self.type = data["modf"]
        @e2 = data["e2"]
        @b = data["b"]
        @g = data["g"]
        @d = data["d"]
        @a = data["a"]
        @e = data["e"]
        #binding.pry
        @@all << self
    end
    
    def self.all
        @@all
    end

end