puts "Welcome in the game. What is your name"
name = gets.chomp.capitalize!



number = rand(100) + 1 #генератор случайного числа

game_continued = true # продолжение игры

num_gues = 0  # счетчик угадывваний

while num_gues < 10 && game_continued
puts "You have #{10 - num_gues} guesses.  Write yout gues "
gues = gets.to_i    #  число которое ввёл
num_gues += 1

if gues > number
	puts "Your gues is  HIGH"
elsif gues < number
	puts "Your gues is LOW"
elsif gues = number
	puts "Congratulations, You win"
	puts "You guesses my number with #{num_gues} gues"
	game_continued = false
end

end

unless !game_continued
	puts "Play again. Maybe next time you will win.  My number was #{number}" 
	
end
	



