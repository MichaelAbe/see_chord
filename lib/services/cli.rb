class CLI

    attr_reader :chord, :modf, :e2, :b, :g, :d, :a, :e, :type
    
    def call
        puts ""
        puts ""
        puts "Welcome to See Chord: the guitar chord visualizer!"
        puts ""
        puts "-----Please standby while we load your chords-----"
        Api.load_chords
        menew_options
        menew
        # list_chords
        # menu
        #check
        
    end

    # def list_chords
    #     puts "- A - B - C - D - E - F - G -"
    #     puts "Please select the chord root that you are looking for"
    # end

    # def menu   
    #    input = selection
                
    #         if  input == "a"
    #                 puts "What version of an A chord would you like to see?"
    #         elsif input == "b"
    #                 puts "What version of a B chord would you like to see?"
    #         elsif input == "c"
    #                 puts "What version of a C chord would you like to see?"
    #         elsif input == "d"
    #                 puts "What version of a D chord would you like to see?"
    #         elsif input == "e"
    #                 puts "What version of a E chord would you like to see?"
    #         elsif input == "f"
    #                 puts "What version of a F chord would you like to see?"
    #         elsif input == "g"
    #                 puts "What version of a G chord would you like to see?"
    #         elsif input == "exit"
    #                 puts "See(Chord) you later!" 
    #                 exit
    #         else 
    #                 puts "Sorry, we are having trouble finding that chord. Please make a new selection"
    #                 menu
    #         end
    # end

    
    def selection
        print "User selection:"
        gets.chomp.downcase
    end

    def menew_options
        puts "1. Major"
        puts "2. Minor"
        puts "3. Diminished"
        puts "4. Augmented"
        puts "5. Suspended"
        puts "6. Sixth"
        puts "7. Seventh"
        puts "8. maj7"
        puts "9. add9"
        puts "Enter '0' to exit"
    end

    def menew 
        input = selection

        if input == "1"
            major
            #placeholder
        elsif input == "2"
            minor
            #placeholder
        elsif input == "3"
            dim
            #placeholder
        elsif input == "4"
            aug
            #placeholder
        elsif input == "5"
            sus
            #placeholder
        elsif input == "6"
            sixth
            #placeholder
        elsif input == "7"
            seventh
            #placeholder
        elsif input == "8"
            maj7
            #placeholder
        elsif input == "9"
            add9
            #placeholder
        elsif input == "0"
            puts "See(Chord) you later!" 
            exit
        else 
            puts "Sorry, we were unable to process your request. Please make another selection"
            menew_options
        end
    end

    def major 
        maj = Chord.all.select {|chord| chord.type == "major"}
        maj.each do |x|
            puts "#{x.chord} #{x.type}:
        e- #{x.e2} 
        b- #{x.b}
        g- #{x.g} 
        d- #{x.d} 
        a- #{x.a} 
        E- #{x.e}      
            
            "
        end
    end

    def minor
        min = Chord.all.select {|chord| chord.type == "minor"}
        min.each {|i| puts i}
    end

    def dim
        x = Chord.all.select {|chord| chord.type == "dim"}
        x.each {|i| puts i}
    end
    
    def aug
        x = Chord.all.select {|chord| chord.type == "aug"}
        x.each {|i| puts i}
    end

    def sus
        x = Chord.all.select {|chord| chord.type == "sus"}
        x.each {|i| puts i}
    end
    
    def sixth
        x = Chord.all.select {|chord| chord.type == "6"}
        x.each {|i| puts i}
    end

    def seventh
        x = Chord.all.select {|chord| chord.type == "7"}
        x.each {|i| puts i}
    end

    def maj7
        x = Chord.all.select {|chord| chord.type == "maj7"}
        x.each {|i| puts i}
    end

    def add9
        x = Chord.all.select {|chord| chord.type == "add9"}
        x.each {|i| puts i}
    end
    
    
    
    
    

    # def check
    #     puts Chord.all
    # end
    
end