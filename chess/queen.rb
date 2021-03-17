require_relative "Piece"
require_relative "slideable"

class Queen < Piece

    include Slideable

    def symbol
        '♕'
    end

    protected

    def move_dirs
        hor_dirs + diag_dirs
    end

end