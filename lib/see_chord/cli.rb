class SeeChord::CLI
    
    def call
        puts "Welcome to See Chord: the guitar chord visualizer!"
        list_chords
        menu
    end

    def list_chords
        puts "- A - B - C - D - E - F - G -"
    end

    def menu
        puts "Please select the chord root that you are looking for"
        
            input = gets.strip.upcase
                
                if  "A"
                    puts "What version of an A chord would you like to see?"
                elsif "B"
                    puts "What version of a B chord would you like to see?"
                elsif "C"
                    puts "What version of a C chord would you like to see?"
                elsif "D"
                    puts "What version of a D chord would you like to see?"
                elsif "E"
                    puts "What version of a E chord would you like to see?"
                elsif "F"
                    puts "What version of a F chord would you like to see?"
                elsif "G"
                    puts "What version of a G chord would you like to see?"
                elsif "exit"
                    puts "See(Chord) you later!" 
                    exit
        
        end
    end

    
end