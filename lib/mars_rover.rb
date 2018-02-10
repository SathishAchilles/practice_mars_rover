require_relative 'robot/rover'
require_relative 'mars/plateau'

class MarsRover
    attr_accessor :plateau
    
    def initialize(plateau_top_right=[], direction=nil, coordinates=[0,0])
       @plateau = Plateau.new(plateau_top_right[0] ,plateau_top_right[1])
       @rover = Rover.new(direction, coordinates)
    end
    
    def left
        @rover = @rover.left
    end
    
    def right
        @rover = @rover.right
    end
    
    def move
       @rover = @rover.move 
    end
    
    def to_s
       @rover.to_s
    end
end
