#write your code here

def translate(english)
	english = english.split
	vowel = ['a', 'e', 'i', 'o', 'u']
	latin = Array.new
	to_latin = Proc.new do |word|
		if vowel.include? word[0] 
			word += 'ay'
		elsif 'sch'.include? word[0..2]
			word = to_latin.call(word[3..-1]+word[0..2])
		elsif 'qu'.include? word[0..1]
			word = to_latin.call(word[2..-1]+word[0..1])
		else
			word = to_latin.call(word[1..-1]+word[0])
		end
		word
	end

	english.each do |i|
		latin.push(to_latin.call(i))
	end
	latin.join(' ')

end

translate "eat pie"