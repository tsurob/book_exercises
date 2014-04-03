puts 'Enter the start year'
startYear = gets.chomp
puts 'Enter the end year'
laterYear = gets.chomp
year = startYear.to_i
finalYr = laterYear.to_i

while year <= finalYr 
	if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
		puts year
		year += 1	
	end
	year +=1
end
