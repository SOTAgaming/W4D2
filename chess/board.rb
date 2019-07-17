require_relative "piece"

class Board
  attr_reader :grid
  def initialize
    populate_board
  end

  def populate_board
    @grid = Array.new(8) {Array.new(8, nil)}

    (0..1).each do |row|
      (0..7).each do |col|
        #@grid[row][col] = Piece.new
      end
    end

      (6..7).each do |row|
        (0..7).each do |col|
        #@grid[row][col] = Piece.new
      end
    end
  end


  def move_piece(start_pos, end_pos)
  #will update 2D grid and moved pieces position
        #raise error if no pieve at start, or if end_pos isn't a valid move
    start_row, start_col = start_pos
    end_row, end_col = end_pos

      raise "No piece at position" if @grid[start_row][start_col] == nil
      raise "Cannot move to end position" if @grid[end_row][end_col] != nil
       
  end



end

board = Board.new

#p# board.grid

