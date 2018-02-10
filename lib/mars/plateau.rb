class Plateau
   attr_accessor :bottom_left_corner, :top_right_corner 
    
    def initialize(top_right_corner=[0,0], bottom_left_corner=[0,0])
       @bottom_left_corner = bottom_left_corner
       @top_right_corner = top_right_corner
    end
end