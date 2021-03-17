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

            flag = true

            while flag
                cur_x, cur_y = pos
                x, y = dir
                new_pos = [cur_x + x, cur_y + y]
                break until !board.valid_pos?(new_pos)
                moves << new_pos if board.empty?(new_pos)
            end
        end
        moves
    end

    private

    def move_dirs
        
    end
end