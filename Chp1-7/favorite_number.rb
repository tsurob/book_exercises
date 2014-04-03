puts 'What is your favorite number?'
favoriteNumbAsString = gets.chomp
betterFvtNumb = favoriteNumbAsString.to_i + 1 
puts favoriteNumbAsString + ' is ok but ' + betterFvtNumb.to_s  + ' is a bigger and better favorite number :)'