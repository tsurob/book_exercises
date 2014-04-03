puts 'What\'s your first name?'
fstName = gets.chomp
puts 'What\'s your middle name?'
middleName = gets.chomp
puts 'What\'s your last name?'
lstName = gets.chomp
fullNameLgnt = fstName.length + middleName.length + lstName.length
puts 'Hello '+ fstName + ' '+ middleName + ' ' + lstName
puts 'There are ' + fullNameLgnt.to_s + ' Characters in your name'