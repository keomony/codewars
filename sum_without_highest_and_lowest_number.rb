def sum_array(arr)
  #your code here
  (arr.to_a.length <3)? 0 : arr.sort[1..-2].reduce(&:+)
end
