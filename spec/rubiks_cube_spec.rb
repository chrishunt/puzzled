require 'spec_helper'

describe Puzzled::RubiksCube do
  describe "#scramble" do
    before(:each) do
      @rubiks_cube = Puzzled::RubiksCube.new
    end

    it "returns correct number of moves by default" do
      @rubiks_cube.scramble.size.should == 25
    end

    it "contains only valid moves" do
      moves = ["F","B","L","R","D","U"]
      contains_valid_moves(@rubiks_cube.scramble, moves)
    end
  end
end
