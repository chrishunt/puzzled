module Puzzled
  class RevengeCube < Cube
    # Set the move groups for that of a Revenge Cube
    def initialize
      super([["F","B","f","b"],
             ["L","R","l","r"],
             ["D","U","d","u"]])
    end

    # Retun Revenge Cube scramble of length n
    def scramble(n=40)
      super(n)
    end
  end
end
