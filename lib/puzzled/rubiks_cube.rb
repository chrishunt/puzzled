module Puzzled
  class RubiksCube
    def scramble(size=25)
      ret = []
      size.times { ret << 0 }
      return ret
    end
  end
end
