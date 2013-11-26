
prompt = puts "Guess a number between 1 and 100"
user = gets.chomp.to_i
computer =  1 + rand(100)

def game(guess, user_guess)
	until (guess == user_guess) do
	    if  (user_guess > 0 && user_guess < guess)
		    puts "It is more than that"
		    puts " Please, guess again"
            user_guess = gets.chomp.to_i
		      
	     elsif (user_guess > guess && user_guess < 101)
	        puts "It is less than that" 
	        puts " Please, guess again"
            user_guess = gets.chomp.to_i
	           
	     else
	        puts "Please type a numberls between 1 and 100"
	        puts " Please, type again"
            user_guess = gets.chomp.to_i
        end
    end


   if user_guess == guess
	  puts " You got it!"
	  puts "Do you want to play again? Yes/No"
	  ans = gets.chomp.capitalize
	    if ans == "Yes"
	      puts "Type another number between 1 and 100 to play again"
	      user_guess = gets.chomp.to_i
	      guess = 1 + rand(100)
	      game(guess, user_guess)
          elsif ans == "No"
     	  puts "Nice playing with you, Bye!"
          else
     	  puts "You didn't say yes or no, so I am finishing the game anyway."
	
        end
    end
end

game(computer, user)