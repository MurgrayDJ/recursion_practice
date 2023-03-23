# Author: Murgray D. John
# Date: 3/23/2023
# Purpose: To complete the Odin Project's Recursion Project


#Assignment 1 - Fibonacci

#Part 1 - Regular iteration
def fibs(num)
  result = []
  cur_num = 0
  next_num = 1
  
  if num == 1
    result << cur_num
  elsif num == 2
    result = [cur_num, next_num]
  elsif num >= 3
    result = [cur_num, next_num]
    for i in 2...num do
      sum = cur_num + next_num
      cur_num = next_num
      next_num = sum
      result << sum
    end
  end
  result
end

puts "fibs(0) is #{fibs(0)}"
puts "fibs(1) is #{fibs(1)}"
puts "fibs(2) is #{fibs(2)}"
puts "fibs(3) is #{fibs(3)}"
puts "fibs(8) is #{fibs(8)}"

#Part 2 - Recursion