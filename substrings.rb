dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
	result = Hash.new
	dictionary.each do |i|
		regex = /#{i}/i
		if word.scan(regex).count > 0
			result[i] = word.scan(regex).count
		end
	end
	puts result
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)