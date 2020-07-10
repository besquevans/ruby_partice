def a
	puts "aaa"
	return nil
end

def b 
	puts "bbb"
	return 2
end

#1
# a && b
#a return nill 不做 b

#1_1
# if a
#     b
# end

#2
puts (a || b)
#a => true 則 b 不用做