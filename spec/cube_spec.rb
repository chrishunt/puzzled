require 'spec_helper'

describe Puzzled::Cube do
  describe "#scramble" do
    before(:each) do
      @cube = Puzzled::Cube.new
    end

    it "returns correct number of moves" do
      scramble_size = 30
      @cube.scramble(scramble_size).size.should == scramble_size
    end

    it "returns default set of moves when no size is given" do
      @cube.scramble.size.should > 0
    end

    it "contains only valid moves" do
      moves = ["F","B","L","R","D","U",
               "f","b","l","r","d","u"]
      contains_valid_moves(@cube.scramble, moves)
    end

    it "does not rotate the same face 2 times in a row" do
      prev = nil
      @cube.scramble(500).each do |move|
        if prev != nil
          move[0].should_not == prev
        end
        prev = move[0]
      end
    end

    it "does not rotate parallel faces 3 times in a row" do
      group = { "F" => 1, "B" => 1, "f" => 1, "b" => 1,
                "L" => 2, "R" => 2, "l" => 2, "r" => 2,
                "D" => 3, "U" => 3, "d" => 3, "u" => 3 }
      prev = nil
      prev_prev = nil
      @cube.scramble(500).each do |move|
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
