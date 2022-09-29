# 要求五 ( Optional )：演算法
# 將以下題目用ruby改寫
# 給定只會包含 0 或 1 兩種數字的列表 (Python) 或陣列 (JavaScript)，計算連續出現 0 的最大長度。提醒：請勿更動題目中任何已經寫好的程式。

# Python
# def maxZeros(nums):# 請用你的程式補完這個函式的區塊
# maxZeros([0, 1, 0, 0])# 得到 2
# maxZeros([1, 0, 0, 0, 0, 1, 0, 1, 0, 0])# 得到 4
# maxZeros([1, 1, 1, 1, 1])# 得到 0
# maxZeros([0, 0, 0, 1, 1])# 得到 3

def maxZeros(nums)
    max = 0
    countZero = 0
    nums.each do |item|
        if item == 1
            countZero = 0
            next
        else
            countZero += 1
        end
        if countZero > max
            max = countZero
        end
    end
    p max
end                 


maxZeros([0,1,0,0])
maxZeros([1,0,0,0,0,1,0,1,0,0])
maxZeros([1,1,1,1,1])
maxZeros([0,0,0,1,1])