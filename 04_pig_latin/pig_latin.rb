#write your code here
def translate input
	vowels = ['a', 'e', 'y', 'u', 'i', 'o']
	words = input.split

	words.each do |word|
		chars = word.split('')
		index = words.index(word)

		while !vowels.include?(chars[0]) do
			if chars[0..1] == ['q', 'u']
				first = chars.shift(2)
				chars << first
			else
				first = chars.shift 
				chars << first
			end
		end	

		words[index] = chars.join + 'ay'
	end

	words.join(' ')
end