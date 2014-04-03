puts 'Ask grandma you question'
while true
	question = gets.chomp
	if question == 'BYE' || question == 'BYE!'
		break	
	elsif question == question.upcase
		puts 'NO, NOT SINCE ' + (rand(1938).to_s )+'!'	
	else
		puts 'HUH?! SPEAK UP, SONNY!'				
	end	
end