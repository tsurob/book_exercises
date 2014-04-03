def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				return true
			else
				return false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
	return #This is what we return (true or false)
end
puts 'Hello, and thank you for...'
puts
ask 'Do you like eating tacos?' # Ignor this return value
ask 'Do you like eating burritos?' # And this one
wet_bed = ask 'Do you wet the bed?' # Save this return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions.....'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Tnank you for...'
puts
puts wet_bed