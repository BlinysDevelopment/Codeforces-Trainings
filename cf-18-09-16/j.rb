n = gets.to_i

if n == 1 or n == 2
    puts '0'
    exit
end

sum = n / 2

if n.even?
    sum *= ((n / 2) * (n / 2 - 1)) / 2
else
    sum *= ((n / 2) * (n / 2 + 1)) / 2
end

if n >= 6
    sum += ((n / 2) * (n / 2 - 1) * (n / 2 - 2)) / 6
end

puts sum
