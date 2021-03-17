require "singleton"
require_relative "piece"

class NullPiece < Piece

    attr_reader :symbol
    include Singleton
    
    def initialize
        # super(color, symbol)
        @color = ""
        @symbol = ""
    end
    
    def empty?
        true
    end

    def moves
        []
    end
end