#write your code here
def echo input
	input
end

def shout input
	input.upcase!
end

def repeat input, times = 2
	((input + ' ') * times)[0...-1]
end

def start_of_word input, index
	input[0...index]
end

def first_word input
	input.split[0]
end

def titleize input
	result = input.split

	result.each do |n| 
		index = result.index(n)
		if index == 0 || result[-1] == n || n.length > 4
			n.capitalize!
		end 
	end

	result.join(' ')
end