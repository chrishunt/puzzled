module Puzzled
  class Cube
    # Set the move groups and dirs for this cube
    def initialize(groups = nil)
      @groups = groups ? groups : [["F","B"],["L","R"],["D","U"]]
      @dirs   = ["","'","2"]
    end

    # Retun Cube scramble of length n
    def scramble(n=10)
      scramble = []
      prev_group = nil
      prev_prev_group = nil
      n.times do
        # Find a move group for the next move
        # We cannot have 3 moves in a row that are in the same group
        group = rand(@groups.size)
        if prev_group == nil
          prev_group = group
        elsif prev_prev_group == nil
          prev_prev_group = prev_group
          prev_group = group
        else
          # While we have 3 moves in the same group, pick a new group
          while group == prev_group && group == prev_prev_group
            group = rand(@groups.size)
          end
          prev_prev_group = prev_group
          prev_group = group
        end

        # Find the next move from move group
        # We cannot have two turns in a row on the same face
        move = @groups[group][rand(@groups[group].size)]
        if scramble.size > 0
          while move == scramble.last[0] do
            move = @groups[group][rand(@groups[group].size)]
          end
        end

        # Find a direction for this move
        dir = @dirs[rand(@dirs.size)]

        # Add move to scramble
        scramble << move + dir
      end
      return scramble
    end
  end
end
