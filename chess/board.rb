class Board

    def self.init_board
        Array.new(8) { Array.new(8, null_piece) }
    end

    def initialize
        @null_piece = NullPiece.new
        @board = Board.init_board
    end

    def [](pos)
        @board[pos.first][pos.last]
    end

    def []=(pos, val)
        @board[pos.first][pos.last] = val
    end

    def move_piece(color, start_pos, end_pos)
        raise 'no piece' if !empty_pos?(start_pos)
        piece = self[start_pos]
    end

    def empty_pos?(pos)
        @board[pos].empty?
    end

    

end