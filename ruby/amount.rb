# 肉の量り売り
price = 128
weight = 300
amount = ((price / 100) * weight).to_i
puts "100グラム#{price}円の肉、#{weight}グラムは、#{amount}円です。"

# 肉の量り売り
price = 128
weight = 300
amount = ((price.to_f / 100) * weight).to_i
puts "100グラム#{price}円の肉、#{weight}グラムは、#{amount}円です。"



#問2
# 割引や、消費税の計算式
price = 3500
puts "定価:#{price}円"

discount_price = (price * 0.85).to_i
puts "割引価格は、#{discount_price}です。"

amount = (discount_price * 1.10).to_i
puts "税込み金額は、#{amount}円です。"

person = 5
puts "人数が、#{person}人の場合、"

amount_per_person = amount / person
puts "一人当たり#{amount_per_person}円です"