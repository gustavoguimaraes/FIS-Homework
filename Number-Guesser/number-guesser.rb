def prompt
  puts "Guess a number between 1 and 100"
  gets.chomp.to_i
end

def please_type_again
  puts " Please, guess again"
  gets.chomp.to_i
end

def havent_guessed(user_guess, computer_number)
  if (user_guess > 0 && user_guess < computer_number)
   puts "It is more than that"
   please_type_again
  elsif (user_guess > computer_number && user_guess < 101)
   puts "It is less than that"
   please_type_again
  else
   puts "Please type a number between 1 and 100"
   please_type_again
  end
end

def congratulations
  puts "You got it! Do you want to play again? Yes/No"
  gets.chomp.downcase
end

def correct_guess(user_guess, computer_number)
  return game if congratulations == "yes"
  puts "Nice playing with you, Bye!"
  false
end

def game
  user_guess = prompt
  computer_number = 1 + rand(100)
  puts computer_number
  while true
    return correct_guess(user_guess, computer_number) if user_guess == computer_number
    user_guess = havent_guessed(user_guess, computer_number)
  end
end

game