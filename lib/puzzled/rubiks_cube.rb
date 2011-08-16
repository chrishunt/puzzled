module Puzzled
  class RubiksCube
    GROUPS = [["F","B"],["L","R"],["D","U"]]
    DIRS   = ["","'","2"]

    # Retun Rubik's Cube scramble of size = size
    def scramble(size=25)
      scramble = []
      prev_group = nil
      prev_prev_group = nil
      size.times do
        # Find a move group for the next move
        # We cannot have 3 moves in a row that are in the same group
        group = rand(GROUPS.size)
        if prev_group == nil
          prev_group = group
        elsif prev_prev_group == nil
          prev_prev_group = prev_group
          prev_group = group
        else
          # While we have 3 moves in the same group, pick a new group
          while group == prev_group && group == prev_prev_group
            group = rand(GROUPS.size)
          end
          prev_prev_group = prev_group
          prev_group = group
        end

        # Find the next move from move group
        # We cannot have two turns in a row on the same face
        move = GROUPS[group][rand(GROUPS[group].size)]
        if scramble.size > 0
          while move == scramble.last[0] do
            move = GROUPS[group][rand(GROUPS[group].size)]
          end
        end

        # Find a direction for this move
        dir = DIRS[rand(DIRS.size)]

        # Add move to scramble
        scramble << move + dir
      end
      return scramble
    end
  end
end
