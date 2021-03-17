require_relative 'Piece'


class Pawn < Piece
    
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
        x, y = @pos

        side_moves = [[x + forward_dir, y - 1], [x + forward_dir, y + 1]]
        side_moves.select do |attack|
            if !board.valid_pos?(attack) || board.empty?(attack)
                next
            end
            potential_attack = board[attack]  
            potential_attack && potential_attack.color != color
        end
    end
end