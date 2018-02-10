module Direction

class North
X = 0
Y = 1

def left
    W
end

def right 
    E
end

def x_step
   X 
end

def y_step
    Y
end  

def to_s
    "N"
end

end

class South
   X = 0
   Y = -1
   
   def left
       E
   end
   
   def right
       W
   end
   
   def x_step
       X 
    end
    
    def y_step
        Y
    end  
    
    def to_s
        "S"
    end
end

class West
   X = -1
   Y = 0
   
   def left
     S
   end
   
   def right
     N
   end   
   
   def x_step
       X 
    end
    
    def y_step
        Y
    end 
    
     def to_s
        "W"
     end
end

class East
   X = 1
   Y = 0
   
   def left
    N
   end
   
   def right
    S
   end
   
   def x_step
       X 
    end
    
    def y_step
        Y
    end  
    
    def to_s
        "E"
    end
end

def self.load_constant(direction)
    case direction
    when "N"
        N
    when "S"
        S
    when "W"
        W
    when "E"
        E
    end
end


N = North.new
S = South.new
W = West.new
E = East.new

end


