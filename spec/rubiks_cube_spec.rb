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
  end
end
