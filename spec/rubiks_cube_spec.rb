require 'puzzled'

describe Puzzled::RubiksCube do
  describe "#scramble" do
    it "returns correct number of moves" do
      scramble_size = 30
      Puzzled::RubiksCube.new.scramble(scramble_size).size.should == scramble_size
    end
    it "returns correct number of moves when no size is given" do
      Puzzled::RubiksCube.new.scramble.size.should > 0
    end
  end
end
