def old_roman_numeral number
	count = 1
	romanNum = ''
	while true
		if (number <= 0 || number >= 3000)
			return puts 'Please enter number between 1-3000'
		

		elsif (number >= 1000)
			count = (number / 1000)
			for i in 1..count do
				romanNum += 'M' 
				number = number % 1000
			end
		end

		
		
		if (number >= 500)
			count = (number / 500)
			for i in 1..count do
				romanNum += 'D' 
				number = number % 500
			end	
		end
	
		
		if (number >= 100)
			count = (number / 100)
			for i in 1..count do
				romanNum += 'C' 
				number = number % 100
			end
		end		
		
		
		if (number >= 50)
			count = (number / 50)
			for i in 1..count do
				romanNum += 'L' 
				number = number % 50
			end	
		end
		
		
		if (number >= 10)
			count = (number / 10)
			for i in 1..count do
				romanNum += 'X' 
				number = number % 10
			end
		end
		
		if (number >= 5)
			count = (number / 5)
			for i in 1..count do
				romanNum += 'V' 
				number = number % 5
			end	
		end
		
		if (number >= 1)
			count = (number / 1)
			for i in 1..count do
				romanNum += 'I'
				number = number % 1 
			end
		end
	
	return romanNum
	end
end

puts old_roman_numeral 2458
puts


# for i in 1..8 do
#     puts i
#