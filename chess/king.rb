require_relative "piece"
require_relative "board"
require_relative "stepable"

require "byebug"


# add back board instance variable 

class King < Piece
  include Stepable

  def initialize(color, pos)
    @symbol = :king
    super(color, pos)
  end

  def move_difs
    [[1, 0], [1, 1], [0, 1], [-1, 1], [-1, 0], [-1, -1], [0, -1], [1, -1]]
  end

end