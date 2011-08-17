require 'spec_helper'

describe Puzzled::MiniCube do
  describe "#scramble" do
    before(:each) do
      @mini_cube = Puzzled::MiniCube.new
    end

    it "returns correct number of moves by default" do
      @mini_cube.scramble.size.should == 25
    end

    it "contains only valid moves" do
      moves = ["F","B","L","R","D","U"]
      contains_valid_moves(@mini_cube.scramble, moves)
    end
  end
end
