require 'puzzled'

describe Puzzled::RubiksCube do
  describe "#scramble" do
    before(:each) do
      @rubiks_cube = Puzzled::RubiksCube.new
    end

    it "returns correct number of moves" do
      scramble_size = 30
      @rubiks_cube.scramble(scramble_size).size.should == scramble_size
    end

    it "returns correct number of moves when no size is given" do
      @rubiks_cube.scramble.size.should > 0
    end

    it "contains only valid moves" do
      moves = ["F","B","L","R","D","U"]
      dirs  = ["'","2"]
      @rubiks_cube.scramble.each do |move|
        move.size.should > 0
        move.size.should <= 2
        moves.include?(move[0]).should == true
        dirs.include?(move[1]).should == true if move.size > 1
      end
    end

    it "does not rotate the same face 2 times in a row" do
      prev = nil
      @rubiks_cube.scramble(500).each do |move|
        if prev != nil
          move[0].should_not == prev
        end
        prev = move[0]
      end
    end

    it "does not rotate parallel faces 3 times in a row" do
      group = { "F" => 1, "B" => 1,
                "L" => 2, "R" => 2,
                "D" => 3, "U" => 3 }
      prev = nil
      prev_prev = nil
      @rubiks_cube.scramble(500).each do |move|
        if prev == nil
          prev = move
        elsif prev_prev == nil
          prev_prev = prev
          prev = move
        else
          if group[prev[0]] == group[move[0]]
            group[prev_prev[0]].should_not == group[move[0]]
          end
          prev_prev = prev
          prev = move
        end
      end
    end

  end
end
