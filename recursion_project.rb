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

# puts "fibs(0) is #{fibs(0)}"
# puts "fibs(1) is #{fibs(1)}"
# puts "fibs(2) is #{fibs(2)}"
# puts "fibs(3) is #{fibs(3)}"
# puts "fibs(8) is #{fibs(8)}"

#Part 2 - Recursion
def fibs_rec(num, result=[])
  if num == 0
    result << 0
  elsif num == 1
    result << 1
  elsif num == 2
    result.unshift(1)
    result.unshift(0)
  else
    prev_result = fibs_rec(num-1, result)
    result << prev_result[-1] + prev_result[-2]
  end
  result
end

# puts "fibs_rec(0) is #{fibs_rec(0)}"
# puts "fibs_rec(1) is #{fibs_rec(1)}"
# puts "fibs_rec(2) is #{fibs_rec(2)}"
# puts "fibs_rec(3) is #{fibs_rec(3)}"
# puts "fibs_rec(8) is #{fibs_rec(8)}"


# Merge Sort
def merge_sort(arr)
  new_arr = []
  if arr.length == 1
    arr
  else
    split_arr = arr.each_slice( (arr.size/2.0).round ).to_a
    #p split_arr
    left_half = merge_sort(split_arr[0])
    right_half = merge_sort(split_arr[1])
    until new_arr.length == arr.length
      if left_half.empty?
        new_arr += right_half
      elsif right_half.empty?
        new_arr += left_half
      elsif left_half[0] < right_half[0]
        new_arr << left_half.shift
      else
        new_arr << right_half.shift
      end
    end
    new_arr
  end
end

puts "[8,3,4,7,2,5,1,6] sorted is #{merge_sort([8,3,4,7,2,5,1,6])}"
puts "[5,2,1,3,6,4] sorted is #{merge_sort([5,2,1,3,6,4])}"
puts "[1,2,3,4] sorted is #{merge_sort([1,2,3,4])}"