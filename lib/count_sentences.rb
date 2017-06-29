#require 'pry'

class String

  def sentence?
    if self.end_with?('.')
    	true
    else
    	false
    end
  end

  def question?
  	if self.end_with?('?')
  		true
  	else
  		false
  	end
  end

  def exclamation?
  	if self.end_with?("!")
  		true
  	else
  		false
  	end
  end

  def count_sentences
  	count = 0
  	if !self.include?('.')
  		count
  	else
  		sent_array = self.split(/[.?!]/)
  		sent_array = sent_array.reject { |word| word.empty? }
  		count = sent_array.length
  		
  	end
  	count
  end

end


# split the string on any and all periods, question marks and exclamation marks.
# count the number of elements that results from that split.
# Remember to consider edge cases such as the following sentence: 
# "This, well, is a sentence. This is too!! And so is this, 
# I think? Woo...". What would happen if we split this sentence on 
# the punctuation characters? We would end up with an array that 
# contains empty strings as well as strings containing sentences.
#  How would you eliminate empty strings from an array? We recommend
#  placing require 'pry' on the top of the file and placing a 
#  binding.pry inside of the #count_sentences method to help you 
#  get this test passing.


