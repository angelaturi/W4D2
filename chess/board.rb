require_relative "piece"
require_relative "null_piece"

class Board

    attr_reader :null_piece, :board

    def self.init_board
        Array.new(8) { Array.new(8) }
    end

    def initialize
        @null_piece = NullPiece.new
        @board = Board.init_board()
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, val)
        
        @board[pos.first][pos.last] = val
    end

    def move_piece(color, start_pos, end_pos)
        raise 'no piece' if !empty?(start_pos) || !empty?(end_pos)
        piece = self[start_pos]
    end

    def empty?(pos)
        @board[pos].nil?
    end

    

end