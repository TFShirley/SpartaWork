# return an array of reversed words
def reverse_array_of_strings words
  # reversed_words = words. map do |word|
  #   word.reverse
  # end
  # return reversed_words
  
  wordsmap(&:reverse)
end

# return all the even numbers less than the given number
def even_numbers_less_than num
  # i = 0
  # even_numbers = []
  # while i < num
  #   even_numbers.push i
  #   i += 2
  # end
  # return even_numbers

  array = []
  (0...num).each do |i|
    if i%2 == 0
      array.push i
    end
  end
  return array
end

# return the average of all numbers in an array
def average numbers
  avg = numbers.reduce 0 do |total, num|
    total + num
  end
  return avg / numbers.length.to_f
end
