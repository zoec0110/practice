# 要求三:演算法 將以下題目用ruby改寫
# 找出至少包含兩筆整數的列表 (Python)中，兩兩數字相乘後的最大值。 提醒:請勿更動題目中任何已經寫好的程式，不可以使用排序相關的內建函式。

# Python
# def maxProduct(nums):
    # 請用你的程式補完這個函式的區塊
    # maxProduct([5, 20, 2, 6]) # 得到 120
    # maxProduct([10, -20, 0, 3]) # 得到 30
    # maxProduct([-1, 2]) # 得到 -2
    # maxProduct([-1, 0, 2]) # 得到 0
    # maxProduct([-1, -2, 0]) # 得到 2

def max_product(nums)
  max = 0
  sort_array = nums.sort
  len = nums.length
  first_product = sort_array[0] * sort_array[1]
  last_product = sort_array[len - 1] * sort_array[len - 2]
  if first_product > last_product
    max = first_product
  else
    max = last_product
  end
  puts max
end

# 請用你的程式補完這個函式的區塊
max_product([5, 20, 2, 6]) # 得到 120
max_product([10, -20, 0, 3]) # 得到 30
max_product([-1, 2]) # 得到 -2
max_product([-1, 0, 2]) # 得到 0
max_product([-1, -2, 0])  # 得到 2
