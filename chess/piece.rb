require 'colorize'
require_relative "board"

class Piece

    attr_reader :board, :color
    attr_accessor :pos
    
    def initialize(board, pos, color)
        @board = board
        @pos = pos
        @color = color
    end

    def moves
        possible_moves = []
    end

    

end

