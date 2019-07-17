require_relative "piece"
require_relative "board"
require_relative "stepable"

# add back board instance variable 

class Knight < Piece
  include Stepable

  def initialize(color, pos)
    @symbol = :knight
    super(color, pos)
  end

  def move_difs
    [[1,2], [2, 1], [-2, 1], [-2, -1], [1, -1], [-1, 2], [-1,-2], [2, -1]]
  end

end

knight = Knight.new(:black, [1,2])
p knight.moves([1, 2])