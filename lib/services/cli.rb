class CLI

    attr_reader :chord, :modf, :e2, :b, :g, :d, :a, :e, :type
    
    def call
        blank_line
        blank_line
        puts "Welcome to See Chord: the guitar chord visualizer!"
        blank_line
        puts "-----Please standby while we load your chords-----"
        Api.load_chords
        blank_line
        puts "* What version of a C chord were you interested in today? *"
        menu_options
        menu
        # list_chords
        # menu
        #check
        
    end
    
    def selection
        blank_line
        print "User selection: "
        gets.chomp.downcase
    end

    def blank_line
        puts ""
    end

    def line_break
        puts " _ _ _ _ _ _ _ _ _ _ _ _ _ "
        puts "-_-_-_-_-_-_-_-_-_-_-_-_-_-"
    end

    def menu_options
        blank_line
        puts "1. Major"
        puts "2. Minor"
        puts "3. Diminished"
        puts "4. Augmented"
        puts "5. Suspended"
        puts "6. Sixth"
        puts "7. Seventh"
        puts "8. maj7"
        puts "9. add9"
        enter_zero
    end

    def enter_zero
        puts "or enter '0' to exit"
    end

    def scroll_up(root = "")
        blank_line
        puts "Scroll up to see your #{root} chords!"
        line_break
        blank_line
        puts "Make another selection to see more"
        menu_options
        blank_line
        enter_zero
    end

    def menu 
        input = selection

        if input == "1" || input == "major" || input == "maj"
            show_chord(chord_type("major"))
            scroll_up("major")
            menu
        elsif input == "2" || input == "minor" || input == "min"
            show_chord(chord_type("minor"))
            scroll_up("minor")
            menu
        elsif input == "3" || input == "diminished" || input == "dim"
            show_chord(chord_type("dim"))
            scroll_up("diminished")
            menu
        elsif input == "4" || input == "augmented" || input == "aug"
            show_chord(chord_type("aug"))
            scroll_up("augmented")
            menu
        elsif input == "5" || input == "suspended" || input == "sus"
            show_chord(chord_type("sus"))
            scroll_up("suspended")
            menu
        elsif input == "6" || input == "sixth" || input == "six" 
            show_chord(chord_type("6"))
            scroll_up("6")
            menu
        elsif input == "7" || input == "seven" || input == "seventh" || input == "7th"
            show_chord(chord_type("7"))
            scroll_up("7")
            menu
        elsif input == "8" || input == "major 7" || input == "maj7" || input == "major seventh" || input == "maj seventh" || input == "maj 7th"
            show_chord(chord_type("maj7"))
            scroll_up("maj7")
            menu
        elsif input == "9" || input == "add9"
            show_chord(chord_type("add9"))
            scroll_up("add9")
            menu
        elsif input == "0" 
            leave
        else 
            blank_line
            puts "-Unfortunately we were unable to process your request." 
            sleep(2)
            blank_line
            puts "Please make a selction from the following menu:"
            menu_options
            menu
        end
    end

    def leave
        blank_line
        sleep(1)
        puts "See(Chord) you later!" 
        blank_line
        sleep(1)
        exit
    end

    def chord_type(kind)
        chord = Chord.all.select {|chord| chord.type == kind}
        chord
    end

    def show_chord(y)
        y.each do |x|
            blank_line
            puts "#{x.chord} #{x.type}:
        e- #{x.e2} 
        b- #{x.b}
        g- #{x.g} 
        d- #{x.d} 
        a- #{x.a} 
        E- #{x.e}"
        end
    end
end