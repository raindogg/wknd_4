# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  alphabet = ('a'..'z').to_a
  range_array = range.split('')
  first_letter = range_array.first
  last_letter = range_array.last
  missing_letters = []
  for letter in (alphabet.index(first_letter)..alphabet.index(last_letter))
    if range_array.index(alphabet[letter]).nil?
      missing_letters << alphabet[letter]
    end
  end
 
  if missing_letters.length == 0
    nil
  else
    missing_letters.join
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("ace")

puts "Your method returned:"
puts result
puts

if result == "bd"
  puts "PASS!"
else
  puts "F"
end
