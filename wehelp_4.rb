# 要求四 ( 請閱讀英文 ):演算法
# 將以下題目用ruby改寫
# Given an array of integers, show indices of the two numbers such that they add up to a specific target.
# You can assume that each input would have exactly one solution, and you can not use the same element twice.

# def twoSum(nums, target):
#     # your code here
#     result = twoSum([2, 11, 7, 15], 9)
#     print(result)# show [0, 2] because nums[0]+nums[2]is 9

def two_sum(nums, target)
  arr = []
  # ruby的range會包括最後一個數字，因此length要- 1，在做index才不會取到nil
  len = nums.length - 1
  range = (0..len)
  range.each do |i|
    range.each do |j|
      if nums[i] + nums[j] == target
        arr.push(i)
      end
    end
  end
  arr
end

result = two_sum([2, 11, 7, 15], 9)
print(result)  # show [0, 2] because nums[0]+nums[2] is 9
