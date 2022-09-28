#第一題 將以下題目用ruby改寫：
#def calculate(min, max):
    # 請用你的程式補完這個函式的區塊calculate(1, 3)
    # 你的程式要能夠計算 1+2+3，最後印出 6
    # calculate(4, 8)你的程式要能夠計算 4+5+6+7+8，最後印出 30


    def calculate(min, max)
        sum = 0
        for num in (min..max)
            sum = sum + num
        end
        result = sum
        puts result
    end
    calculate(1,3)
    calculate(4,8)