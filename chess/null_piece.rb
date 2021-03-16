require "singleton"
require_relative "piece"

class NullPiece < Piece

    attr_reader :color, :symbol
    include Singleton
    
    def initialize
        super(color, symbol)
        @color = color
        @symbol = symbol
    end
    
    def empty?
        true
    end

    def moves
        []
    end
end