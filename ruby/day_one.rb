x = 1

while x <= 10
  puts "this is sentence number #{x}"
  x = x + 1
end


rand_num = rand(10)
guess = nil

while not guess == rand_num
  puts "Pick a number between 0 and 9: "
  guess = gets.chomp.to_i

  if guess < rand_num
    puts "Too low! Guess higher"
  elsif guess < rand_num
    puts "Too high! Guess lower"
  end
end

puts "Correct! You won."
