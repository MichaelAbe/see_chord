require 'pry'

class Api


    def self.base_url
        "http://pargitaru.id.lv/api/?type=json&request=chords&chord"
    end

    def self.load_c_chords
        #while true
            response = RestClient.get(base_url = "=C")
            data = JSON.parse(response.body)
            binding.pry
            # data["results"].each do |character_data|
            #     Character.new(character_data)
            # end

            # if data["next"].nil?
            #     break
            #end
    end 
    
end