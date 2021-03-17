require_relative "Piece"
require_relative "slideable"

class Rook < Piece

    include Slideable

    def symbol
        '♖'
    end

    protected

    def move_dirs
        hor_dirs
    end

end