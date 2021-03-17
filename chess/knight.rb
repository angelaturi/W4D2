require_relative "piece"
require_relative "stepable"

class Knight < Piece
    include Stepable

    MOVES = [
        [-2, -1],
        [-2, 1],
        [-1, -1],
        [-1, 1],
        [1, -2],
        [1, 2],
        [2, -1],
        [2, 1]
    ]

    def symbol
        "♞".colorize(color)
    end

    def move_diffs
        MOVES
    end
end