require "singleton"
require_relative "Piece"

class NullPiece < Piece

    attr_reader :color, :symbol
    include Singleton
    
    def initialize
        # @color = color
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