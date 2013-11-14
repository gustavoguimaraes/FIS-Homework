
prompt = puts "Type a number between 1 and 100"
guess =  gets.chomp.to_i

	  until (guess == 43) do
	        if  guess > 1 && guess < 43
		      puts "It is more than that"
		      puts " Please, type again"
              guess = gets.chomp.to_i
		      
	         elsif guess > 43 && guess < 101
	           puts "It is less than that" 
	           puts " Please, type again"
               guess = gets.chomp.to_i
	           
	         else
	           puts "The number should be between 1 and 100"
	           puts " Please, type again"
               guess = gets.chomp.to_i
            end
        end

if guess == 43
	puts " You got it!"
end