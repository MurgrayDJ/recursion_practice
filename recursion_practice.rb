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

# puts "The factorial of 4 is: #{fact(4)}"
# puts "The factorial of 10 is: #{fact(10)}"


# Define a recursive function that returns true if a string is a palindrome and false otherwise.
def palindrome(a_string)
  if a_string.length == 0 || a_string.length == 1
    true
  elsif a_string[0] == a_string[-1] 
    palindrome(a_string[1..-2])
  else
    false
  end
end

def palindrome_helper(a_string)
  if palindrome(a_string)
    puts "#{a_string} is a palindrome"
  else
    puts "#{a_string} is NOT a palindrome"
  end
end

# palindrome_helper("racecar")
# palindrome_helper("a")
# palindrome_helper("banana")
# palindrome_helper("011110")