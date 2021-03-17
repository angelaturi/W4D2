require_relative "Piece"
require_relative "stepable"

class King < Piece

    include Stepable

    MOVES = [
        [-1, -1],
        [-1,  0],
        [-1,  1],
        [ 0, -1],
        [ 0,  1],
        [ 1, -1],
        [ 1,  0],
        [ 1,  1]
    ]

    def symbol
        "♔"
    end

    protected

    def move_diffs
        MOVES
    end

end