module Puzzled
  class RubiksCube
    def scramble(size=25)
      scramble = []
      size.times { scramble << "F'" }
      return scramble
    end
  end
end
