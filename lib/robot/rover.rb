require_relative 'direction'
require_relative 'coordinates'

class Rover
   attr_accessor :direction, :coordinates
   
   def initialize(direction, coordinates=[0,0])
      @direction = Direction.load_constant(direction)
      @coordinates = Coordinates.new(coordinates[0].to_i, coordinates[1].to_i)
   end
    
   def move
     @coordinates.update(@direction.x_step, @direction.y_step)
     return self
   end
   
   def to_s
       @coordinates.to_s + "\s" + @direction.to_s
   end
   
   def left
       @direction = @direction.left
       return self
   end
   
   def right
       @direction = @direction.right
       return self
   end
    
end