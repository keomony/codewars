#Description:

#Write a function which takes two arguments and returns all number, which are divisible by given divisor. First argument is array of numbers and the second is divisor.

#Example

#divisible_by([1,2,3,4,5,6], 2) == [2,4,6]

def divisible_by(numbers, divisor)
  numbers.find_all { |i|  (i % divisor).zero? }
end

