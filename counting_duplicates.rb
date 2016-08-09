#Description:

#Count the number of Duplicates

#Write a function that will return the count of distinct case-insensitive alphabetic characters that occur more than once in the given string. The given string can be assumed to contain only uppercase and lowercase alphabets.

#Example

#"abcde" -> 0 # no characters repeats more than once
#"aabbcde" -> 2 # 'a' and 'b'
#"aabbcdeB" -> 2 # 'a' and 'b'
#"indivisibility" -> 1 # 'i'
#"Indivisibilities" -> 2 # 'i' and 's'

def duplicate_count(text)
  duplicate_letter = []
  #text = text.downcase
  text.downcase.split("").each{ |letter| (text.count(letter) >1)? duplicate_letter << letter : 0 }
  return duplicate_letter.uniq.size
end
