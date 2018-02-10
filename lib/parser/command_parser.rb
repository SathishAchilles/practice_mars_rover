require_relative '../mars_rover'

puts "plateau values??"
plateau_dimension = gets.chomp
loop do 
puts " original direction & coordinates?"
dir_and_coordiantes = gets.chomp
dir_and_coordiantes = dir_and_coordiantes.split(' ')
direction = dir_and_coordiantes.pop
coordinates = dir_and_coordiantes
rover = MarsRover.new(plateau_dimension, direction, coordinates)
puts "give commands"
commands = gets.chomp
# commands = "M"
commands = commands.split('')
commands.each do |command|
    case when command == 'L'
            rover.left
        when command == 'R'
            rover.right
        when command == 'M'
            rover.move
        end
end

puts rover.to_s
end

    
