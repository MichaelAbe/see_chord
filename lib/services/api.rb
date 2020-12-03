class Api


    def self.base_url
        "http://pargitaru.id.lv/api/?type=json&request=chords&chord="
    end

    def self.load_chords
        response = RestClient.get(base_url + "C")
        data = JSON.parse(response.body)
        #!binding.pry
         water = data["chords"].each {|chord_info| Chord.new(chord_info)}
    end 

    
    
end
