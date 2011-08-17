require 'spec_helper'

describe Puzzled::RevengeCube do
  describe "#scramble" do
    before(:each) do
      @revenge_cube = Puzzled::RevengeCube.new
    end

    it "returns correct number of moves by default" do
      @revenge_cube.scramble.size == 40
    end

    it "contains only valid moves" do
      moves = ["F","B","L","R","D","U",
               "f","b","l","r","d","u"]
      contains_valid_moves(@revenge_cube.scramble, moves)
    end

    it "contains some slice moves" do
      contains_slice_moves(@revenge_cube.scramble)
    end
  end
end
