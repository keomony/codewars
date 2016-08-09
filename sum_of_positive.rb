#Description:
#You get an array of numbers, return the sum of all of the positives ones.
#Example [1,-4,7,12] => 1 + 7 + 12 = 20


def positive_sum(arr)
  #the first line here works too
  #arr.find_all{|a| a>0}.reduce(0, :+)
  arr.select(&:possitive?).reduce(0, :+)
end
