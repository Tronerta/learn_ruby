class Book
	attr_reader :title
	
	def title=(new_title)
		words = new_title.split

		words.each do |word| 
			index = words.index(word)
			small_words = ['a', 'an', 'the', 'and', 'in', 'of']

			if index == 0 || words[-1] == word || !small_words.include?(word)
				word.capitalize!
			end
			
		end

		@title = words.join(' ')
	end

end
