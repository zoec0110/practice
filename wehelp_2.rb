# 要求二：將以下題目用ruby改寫
# Python 字典與列表
# 正確計算出員工的平均薪資，請考慮員工數量會變動的情況。提醒：請勿更動題目中任何已經寫好的程式。

# def avg(data):
# 請用你的程式補完這個函式的區塊
# avg({
#     "count":3,
#     "employees":[
#         {
#             "name":"John",
#             "salary":30000
#         },
#         {
#             "name":"Bob",
#             "salary":60000
#         },
#         {
#             "name":"Jenny",
#             "salary":50000
#         }
#         ]
#     })
        # 呼叫 avg 函式

def avg(data)
    #取出count值
    qty = data[:count]
    sum = 0
    data[:employees].each do |item|
        #取出salary值
        item = item[:salary]
        #加總
        sum += item
    end
    puts sum/qty

end

avg({
    count: 3,
    employees: [
        {
            name: "John",
            salary: 30000},
        {
            name: "Bob",
            salary: 60000},
        {
            name: "Jenny",
            salary: 50000}
    ]
})

