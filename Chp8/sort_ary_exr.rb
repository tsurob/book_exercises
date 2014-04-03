puts 'Enter a word and press Enter.'
puts 'Press the Enter key twice to end program'
print "> "
word = gets.chomp 
words = []
words.push word	
while word != ''
	print "> "
	word = gets.chomp 
	words.push word		
end
puts words.sort
