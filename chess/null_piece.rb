require "singleton"
require "piece"

class NullPiece < Piece

    include Singleton

    def initialize
        super
    end
end