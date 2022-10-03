# 要求四 ( 請閱讀英文 ):演算法
# 將以下題目用ruby改寫
# Given an array of integers, show indices of the two numbers such that they add up to a specific target.
# You can assume that each input would have exactly one solution, and you can not use the same element twice.

# def twoSum(nums, target):
#     # your code here
#     result = twoSum([2, 11, 7, 15], 9)
#     print(result)# show [0, 2] because nums[0]+nums[2]is 9

def two_sum(nums, target)
  record = {}
  (0..(nums.length - 1)).each do |index|
    current_num = nums[index]
    diff = target - current_num
    return [index, record[diff]] if record[diff]

    record[current_num] = index
  end
  [-1, -1]
end

result = two_sum([2, 11, 7, 15], 9)
print(result)  # show [0, 2] because nums[0]+nums[2] is 9
