require 'spec_helper'

describe Puzzled::ProfessorsCube do
  describe "#scramble" do
    before(:each) do
      @professors_cube= Puzzled::ProfessorsCube.new
    end

    it "returns correct number of moves by default" do
      @professors_cube.scramble.size == 60
    end

    it "contains only valid moves" do
      moves = ["F","B","L","R","D","U",
               "f","b","l","r","d","u"]
      contains_valid_moves(@professors_cube.scramble, moves)
    end

    it "contains some slice moves" do
      contains_slice_moves(@professors_cube.scramble)
    end
  end
end
