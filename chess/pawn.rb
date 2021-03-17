require "Stepable"
require_relative 'Piece'


class Pawn < Piece
    include "Stepable"
    
    def symbol
        "♙".colorize(@color)
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
        one_step = [x + forward_dir, y]
        if board.valid_pos?(one_step) && board.empty?(one_step)
            step << one_step
        end
        
        two_step = [one_step[0] + forward_dir, one_step[1]]
        step << two_step if at_start_row? && board.empty?(two_step)
        step
    end

    def side_attacks
        attack_pos = []

    end
end