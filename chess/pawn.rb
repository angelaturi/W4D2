require_relative 'Piece'


class Pawn < Piece
    
    def symbol
        :♙.colorize(@color)
    end

    def moves

    end

    private

    def at_start_row?
        @pos[0] == (color == :white) ? 1 : 6
    end

    def forward_dir
        (color == :white) ? 1 : -1
    end

    def forward_steps
        x, y = @pos
        step = []
        one_step = [x + forward_dir, y ]
        if board.valid_pos?(one_step) 
end