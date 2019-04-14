# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: 0(n-1) linear - where n is the input value
# Space complexity: O(1) constant - because size of the input value does not
#                                   change the amount of space taken
def fibonacci(n)
  result = 0
  first = 0
  second = 1

  if !n || n < 0
    raise ArgumentError, "Must be an integer greater than zero"
  elsif n == 0
    return first
  elsif n == 1
    return second
  else
    (n - 1).times do
      result = first + second
      first = second
      second = result
    end
  end

  return result
end
