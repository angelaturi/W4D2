require_relative "Piece"
require_relative "slideable"

class Bishop < Piece

    include Slideable

    def symbol
        '♗'
    end

    protected

    def move_dirs
        diag_dirs
    end

end