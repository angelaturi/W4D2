module Stepable

    def move
        moves = []

        move_diff.each do |dx, dy|
            cur_x, cur_y = self.pos
            self.pos = [cur_x + dx, cur_y + dy]
            flag = true

            while flag
                break until !board.valid_pos?(pos)
                 
                if board.empty?(pos)
                    move << pos 
                else
                    move << pos if board[pos].color != color
                    break
                end
            end
        end
        moves
    end

    private

    def move_diff
        raise NotImplementedError
    end


end