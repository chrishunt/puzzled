Puzzled?
========
Generates scrambles for, and solves, the Rubik's Cube.

Current Status
--------------
`Puzzled::RubiksCube.scramble` generates Rubik's Cube scrambles

Usage
-----

    $ irb

    > require 'puzzled'
    > cube = Puzzled::RubiksCube.new
    > cube.scramble     # generates typical 25-move scramble
    > cube.scramble 5   # generates 5-move scramble
       #=> ["F2","R","F2","U2","L2"]
