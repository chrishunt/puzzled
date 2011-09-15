Puzzled? ![Travis CI Status](https://secure.travis-ci.org/huntca/puzzled.png)
=============================================================================
Generates scrambles for the Mini Cube (2x2x2), Rubik's Cube (3x3x3), Revenge Cube (4x4x4), and Professor's Cube (5x5x5).

Usage
-----
Install:

    $ gem install puzzled

Play:

    > require 'puzzled'

    > Puzzled::MiniCube.new.scramble 10
      #=> ["U'", "B2", "U2", "D'", "F'", "U'", "D", "F2", "B", "U2"]

    > Puzzled::RubiksCube.new.scramble 10
      #=> ["F", "D'", "U", "F", "U'", "D2", "F2", "B", "U", "B'"]

    > Puzzled::RevengeCube.new.scramble 10
      #=> ["L", "R'", "u", "d2", "f2", "D", "B", "b", "r'", "L'"]

    > Puzzled::ProfessorsCube.new.scramble 10
      #=> ["D'", "F2", "L2", "F", "f", "d", "l'", "F'", "B'", "R"]

Test:

    $ git clone git://github.com/huntca/puzzled.git
    $ cd puzzled
    $ bundle
    $ rspec spec
