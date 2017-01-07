#write your code here

def echo(says)
	says
end

def shout(says) 
	says.upcase
end

def repeat(says, times=2)
	says= (says+ " ")*times
	length = says.length-1
	says[0,length]
end

def start_of_word(word, letters=1)
	word[0, letters]
end

def first_word(word)
	word = word.split
	word[0]
end

def titleize(word)
	split_word = word.split
	little = ["a", "and", "the", "over" ]
	for i in 0..(split_word.count-1)
		if ((little.include? split_word[i]) && i != 0)
		else
			split_word[i].capitalize!
		end
	end
	split_word.join(' ')
end

