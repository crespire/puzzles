# For a given array, does the array contain the same number of evens and odds?

def balanced_array?(arr)
  return false if arr.length.odd?

  balance = 0
  arr.each do |number|
    balance = number.even? ? balance + 1 : balance - 1
  end
  balance.zero?
end

# Add some basic tests
p balanced_array?([1, 2])
p balanced_array?([1, 1])
p balanced_array?([])
p balanced_array?([1])
p balanced_array?([2])
p balanced_array?(Array.new(16) { rand(1000) })

