require 'puzzled'

def contains_valid_moves(scramble, moves)
  dirs  = ["'","2"]
  scramble.each do |move|
    move.size.should > 0
    move.size.should <= 2
    moves.include?(move[0]).should == true
    dirs.include?(move[1]).should == true if move.size > 1
  end
end

def contains_slice_moves(scramble)
  contains_slice = false
  slices = ["f","b","l","r","d","u"]
  scramble.each do |move|
    contains_slice = true if slices.include?(move)
  end
  contains_slice.should == true
end
