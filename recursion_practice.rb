# Author: Murgray D. John
# Date: 3/21/2023
# Purpose: To revisit the concept of recursion using ruby
# Questions sourced from https://www.codequizzes.com/computer-science/beginner/recursion

# Define a recursive function that finds the factorial of a number.
def fact(n)
  if n == 1
    return 1
  else
    return n * fact(n-1)
  end
end

puts "The factorial of 4 is: #{fact(4)}"
puts "The factorial of 10 is: #{fact(10)}"