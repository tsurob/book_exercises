lineWidth = 40
puts('Table of Contents'.center(lineWidth))
puts ''
#chapterNme = ['Chapter 1:  Getting Started', 'Chapter 1:  Numbers','Chapter 1:  Letters']
#pageNmber = [' page 1','page 9', ' page 13']
tableCont = ['Chapter 1:  Getting Started','page 1' ,'Chapter 1:  Numbers','	 page 9', 'Chapter 1:  Letters', '		 page 13' ]
#puts tableCont
count = 0

while count <= tableCont.length
	puts tableCont[count].ljust(lineWidth/2) + tableCont[count+1].rjust(lineWidth/2)
count += 2		
end
# tableCont.each do |cont|
# 	puts cont
# 	#cont[1].rjust(lineWidth/2)
# 	count += 1
# end

# puts('Chapter 1:  Getting Started'.ljust(lineWidth/2) + ' page 1'.rjust(lineWidth/2))
# puts('Chapter 1:  Numbers'.ljust(lineWidth/2) + ' 		 page 9'.rjust(lineWidth/2))
# puts('Chapter 1:  Letters'.ljust(lineWidth/2) + '		 page 13'.rjust(lineWidth/2))