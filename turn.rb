#Keeps track of current player, outputs score at end of each turn


current_player =

puts "----- NEW TURN -----"
num1 = rand(0..20)
num2 = rand(0..20)
puts "Player #{id}: What does #{num1} plus #{num2} equal?"
sum = num1 + num2
guess = (gets.chomp).to_i
if sum != guess
  @life -= 1
  puts "Player #{id}: Wrong! No way!"
end

puts "P1: #{life} vs P2: #{life}"


