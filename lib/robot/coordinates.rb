class Coordinates
   attr_accessor :x, :y 
    
   def initialize(x, y)
      @x = x
      @y = y
   end
   
   def update(x_incremental_value, y_incremental_value)
      @x += x_incremental_value
      @y += y_incremental_value
      return self
   end
   
   def to_s
    @x.to_s + "\s" + @y.to_s
   end
    
end