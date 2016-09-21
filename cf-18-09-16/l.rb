n = gets.to_i

pieces = gets.split(' ')

red = []
blue = []

pieces.each do |piece|
    if piece[-1] == 'R'
        red.push(piece[0...(piece.size)].to_i)
    else
        blue.push(piece[0...(piece.size)].to_i)
    end
end

red.sort! { |a, b| b <=> a }
blue.sort!  { |a, b| b <=> a }

length = [red.size, blue.size].min

red = red[0...length]
blue = blue[0...length]

sum = red.inject(0, :+)
sum += blue.inject(0, :+)

sum -= length * 2

puts sum
