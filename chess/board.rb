require_relative "null_piece"
require_relative "Piece"

class Board

    attr_accessor :board
    attr_reader :null_piece

    def initialize
        @null_piece = NullPiece.instance
        @board = Array.new(8) { Array.new(8, @null_piece) }
    end

    def [](pos)
        raise 'invalid position' if !valid_pos?(pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, piece)
        raise 'invalid position' if !valid_pos?(pos)
        row, col = pos
        @board[row][col] = piece
    end

    def valid_pos?(pos)
        pos.all? { |x| x.between?(0, 7) }
    end

    def move_piece(color, start_pos, end_pos)
        raise 'no piece' if empty?(start_pos) || !empty?(end_pos)
        piece = self[start_pos]
        self[start_pos] = @null_piece
        self[end_pos] = piece # piece[0, 0]
        piece.pos = end_pos
    end

    def empty?(pos)
        self[pos].empty?
    end

    def add_piece(piece, pos)
        @board[pos] = piece
    end

    def pieces

    end

    def checkmate?(color)

    end

    def in_check?(color)

    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)
        
    end

    # protected
    

end


b = Board.new
p1_w = Piece.new(b, [0, 0], 'W')
p2_w = Piece.new(b, [7, 0], 'W')

b[p1_w.pos] = p1_w 
b[p2_w.pos] = p2_w