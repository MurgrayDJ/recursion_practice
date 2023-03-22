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



#Define a recursive function that takes an argument n and prints "n bottles of beer on the wall", 
#"(n-1) bottles of beer on the wall", ..., "no more bottles of beer on the wall".

def beer_song(n)
  if n == 0
    puts "No more bottles of beer on the wall."
    return 0
  elsif n == 1
    puts "1 more bottle of beer on the wall, 1 more bottle of beer,"
    puts "take it down, pass it around, No more bottles of beer on the wall."
    puts
    return beer_song(n-1)
  else
    puts "#{n} bottles of beer on the wall, #{n} bottles of beer,"
    puts "take 1 down, pass it around, #{n-1} bottles of beer on the wall."
    puts
    return beer_song(n-1)
  end
end

#beer_song(5)
#beer_song(10)


#Define a recursive function that takes an argument n and returns the fibonacci value of that position. 
#The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... So fib(5) should return 5 and fib(6) should return 8.
def fibonacci(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

puts "6th number in the fibonacci sequence: #{fibonacci(6)}"
puts "10th number in the fibonacci sequence: #{fibonacci(10)}"