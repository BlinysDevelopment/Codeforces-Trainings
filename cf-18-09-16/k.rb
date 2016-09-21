k = gets.to_i

k.times do
    n, m = gets.split(' ').map(&:to_i)
    if n == 1 or m == 1
        puts 'No'
    elsif ((n % 2 == 0) and (m % 3 == 0)) or
          ((m % 2 == 0) and (n % 3 == 0))
        puts 'Yes'
    elsif ((n % 2 != 0) and (m % 6 == 0)) or
          ((m % 2 != 0) and (n % 6 == 0))
        puts 'Yes'
    else
        puts 'No'
    end
end
