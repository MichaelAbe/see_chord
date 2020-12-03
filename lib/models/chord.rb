class Chord
    attr_accessor :chord, :modf, :e2, :b, :g, :d, :a, :e, :type

    @@all = []
   
    def initialize(water)
        @chord = water["chord"]
        @type = water["modf"]
        @e2 = water["e2"]
        @b = water["b"]
        @g = water["g"]
        @d = water["d"]
        @a = water["a"]
        @e = water["e"]
        #binding.pry
        @@all << self
    end
    
    def self.all
        @@all
    end

end