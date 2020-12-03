1. flow
2. classes
    - class relationships

user is greeted
user is asked for chord that they want
user is asked what version of chord they want
chord is displayed
user is asked if they want to return to the chord selection screen

Classes
    -Chord
    -CLI
    -API
    -maybe Chord_Variant


maj = chords.select{|chord| chord[:modf] == "major"}
maj.each{|chord| puts chord}