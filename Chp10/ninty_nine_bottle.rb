




def english_number number 
	if number < 0 # No negative numbers.
		return 'Please enter a number that isn\'t negative.'
	end
	if number == 0
		return 'zero'
	end
	# No more special cases! No more returns!
	num_string = '' # This is the string we will return.
	ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	teenagers  = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 
		'seventeen', 'eighteen', 'ninteen']
	tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 
		'eighty', 'ninenty']
	
	# "left" is how much of the number 
	#   	we  still have left to write out.
	#  "write" is the part we are 
	#      writing out right now.
	left = number
	write = left/10 #How many tens left?
	left = left - write*10 #subtract of those tens.
	if write > 0 
		if ((write == 1) and (left > 0))
			# Since we can't write "tenty-two" instead of
			# "twelve", we have to make a special exception 
			# for these.
			num_string = num_string + teenagers[left-1]
			# The "-1" is because teenagers[3] is 'fourteen', 
			# not 'thirteen'. Since we took care of the digit in 
			# one place already, we have nothing left to write.
			left = 0
		else
			num_string = num_string + tens_place[write-1]
			# The "-1" is because tens_place[3] is 'forty',
			# and not 'thirty'.
		end
		if left > 0
			# So we don't write 'sixtyfour'...
			num_string = num_string + '-'
		end
	end
	write = left # How may ones left to write out?
	left = 0 # Subtract off those ones.
	if write > 0
		num_string = num_string + ones_place[write-1]
		# The "-1" is because one_place[3] is 'four', not 'three'.
	end
		# Now we just return "num_string"...
		num_string
end
i = 99
lyrics_A = ' '
lyrics_B = ' '
while i >= 1
	
	puts lyrics =  english_number(i).to_s + ' bottles of beer on the wall, '+ english_number(i).to_s + ' bottles of beer.'
	i = i - 1
	puts  lyrics_B = ' Take one down and pass it around, ' + english_number(i).to_s + ' bottles of beer on the wall.'
end
	