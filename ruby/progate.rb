#①
number = 48

# 条件分岐を作成してください
if number % 3 == 0 && number % 5 == 0
  puts "15の倍数です"
elsif number % 5 == 0
  puts "5の倍数です"
elsif number % 3 == 0
  puts "3の倍数です"
else
  puts "3の倍数でも5の倍数でもありません"
end

#②
(1..100).each do |n|
  def fizzbuzz(n)
    # if n % 15 == 0
    if n % 3 == 0 && n % 5 == 0
      puts "FizzBuzz"
    elsif n % 3 == 0
      puts "Fizz"
    elsif n % 5 == 0
      puts "Buzz"
    else
      puts n
    end
  end

  # puts fizzbuzz(n)
  fizzbuzz(n)
end


#③
characters = [
  {name: "忍者わんこ", age: 14},
  {name: "羊仙人"},
  {name: "ベイビーわんこ", age: 5},
  {name: "鳥頭巾"}
]

characters.each do |character|
  puts "---------------------"
  puts "名前は#{character[:name]}です"

  if character[:age]
    puts "年齢は#{character[:age]}歳です"
  else
    puts "年齢は秘密です"
  end
end

#④
def discount(price)
  # 「price / 2」を戻り値として返してください
    return price / 2
  end
  
  puts "---------------------"
  puts "テレビがセール中です！"
  
  # discountメソッドを呼び出し、その戻り値を変数half_priceに代入してください
  half_price = discount(15000)
  
  # 変数half_priceを用いて、「特別価格で〇〇円です」となるように出力してください
  puts "特別価格で#{half_price}円です"

#⑤
class Menu
  attr_accessor :name
  attr_accessor :price
  
  # infoメソッドを定義してください
  def info
    puts "料理名と値段が表示されます"
  end
end

menu1 = Menu.new
menu1.name = "ピザ"
menu1.price = 800

# menu1に対してinfoメソッドを呼び出してください
menu1.info

