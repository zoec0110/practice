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
 
def maxProduct(nums)
    resultArr = []
    nums.each do |i|
        nums.each do |j|
            # 兩個each 可以讓i跟j相乘
            if j == i
                next          
            # 因為自己會乘到自己，需要跳過這個答案  
            else
                product = i * j
                resultArr.push(product)
            end
        end
    end
    # 找出最大數字
    p resultArr.max
end        


# 請用你的程式補完這個函式的區塊
maxProduct([5, 20, 2, 6])  # 得到 120
maxProduct([10, -20, 0, 3])  # 得到 30
maxProduct([-1, 2])  # 得到 -2
maxProduct([-1, 0, 2])  # 得到 0
maxProduct([-1, -2, 0])  # 得到 2