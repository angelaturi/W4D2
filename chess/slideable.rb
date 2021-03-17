module Slideable

    HORIZONTAL_DIR = [
        [-1,  0],
        [ 0, -1],
        [ 0,  1],
        [ 1,  0]
    ]

    DIAGONAL_DIR = [
        [-1, -1],
        [-1,  1],
        [ 1, -1],
        [ 1,  1]
    ]

    def hor_dirs
        HORIZONTAL_DIR
    end

    def diag_dirs
        DIAGONAL_DIR
    end

    def moves
        moves = []
        move_dirs.each do |dir|

            moves.concat(grow_unblocked_moves_in_dir(dx, dy))
        end
        moves
    end

    private

    def move_dirs
        raise NotImplementedError 
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        cur_x, cur_y = pos
        move = []
        flag = true

        while flag
            cur_x, cur_y = cur_x + dx, cur_y + dy
            pos = [cur_x, cur_y]
            break until !board.valid_pos?(pos)
                if board.empty?(pos)
                    move << pos 
                else
                    move << pos if board[pos].color != color
                    break
                end
        end
        return move
    end
end