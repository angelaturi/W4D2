# require "singleton"
require_relative "piece"

class NullPiece < Piece

    attr_reader :color, :symbol
    # include Singleton
    
    def initialize()
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