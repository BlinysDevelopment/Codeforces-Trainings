arr = gets.split(' ').map(&:to_i).sort { |a, b| a <=> b }
print arr
puts
