puts "整数を入力し、任意の配列から指定した単語を取り出す"
word_number = gets.to_i
word_list = gets.split(' ')
puts word_list[word_number - 1]


puts "N倍の文字列の出力\n入力した整数を※の個数で出力せよ"
number = gets.to_i
astarisc = "*" * number
puts astarisc


# while文にはカウント変数が必須
#putsの下に記述しておかないと無限ループになってしまう。
i = 0
while i <= 4
    puts "ハロー、paizaラーニング"
    i = i + 1
end

# whileによるループ処理
i = 2
while i <= 10
    puts i
    i = i + 2
end


for month in 1..12
  puts "#{month}月"
end


puts "メールアドレスを作成し、@を含んで改行を無くして出力"
s = gets.to_s
t = gets.to_s
puts s.chomp + "@" + t


puts "モンスターはランダムに現れる"
number = rand(1..100) #ランダムメソッド
puts "スライムが#{number}匹現れた"

puts "先頭の小文字を大文字に変換せよ"
spel_change = gets
puts spel_change.capitalize #先頭の小文字を大文字に変換

puts "小文字を大文字に、大文字を小文字に変換せよ"
spel_change = gets
puts spel_change.swapcase #小文字を大文字に、大文字を小文字に変換

puts "小文字を大文字に変換せよ"
spel_change = gets
puts spel_change.upcase #小文字を大文字に変換

puts "大文字を小文字にせよ"
spel_change = gets
puts spel_change.downcase #大文字を小文字にせよ

puts "スイッチのオンオフを偶数か奇数で判定するメソッド問題です。\n"
puts "偶数ならeven?、奇数ならodd?が作動します。"
puts "数字を入力してください。"
num1 = gets.to_i
if num1.odd?
    puts "ON"
else num1.even?
    puts "OFF"
end

puts "num1とnum2の割った余りを求めよ"
num1 = gets.to_i
num2 = gets.to_i
puts num1 % num2

# puts "何角形か算出せよ"
# shape = gets.to_i / 180 + 2
# puts shape

# puts "酒飲みと酒飲まない人の総額計算"
# alcoll = gets.to_i * 6000
# not_alcoll = gets.to_i * 4000
# puts alcoll + not_alcoll

# alcoll = [gets.to_i * 6000, gets.to_i * 4000]
# puts alcoll

# str = "samurai enjinia blog"
# array = str.split
# puts array

# flame = gets.chomp
# puts "+++++++"
# puts "+" + flame + "+"
# puts "+++++++"

# change_leet = gets.chomp.split("")
# change_leet.each { |p|
#     case p
#     when "P"
#         puts "P"
#     when "A"
#         puts "4"
#     when "I"
#         puts "1"
#     when "Z"
#         puts "2"
#     when "A"
#         puts "4"
#     else
#         puts p
#     end
# }

# change_leet = gets.chomp
# change_leet.gsub!(/A/,'4')
# change_leet.gsub!(/E/,'3')
# change_leet.gsub!(/G/,'6')
# change_leet.gsub!(/I/,'1')
# change_leet.gsub!(/O/,'0')
# change_leet.gsub!(/S/,'5')
# change_leet.gsub!(/Z/,'2')
# puts change_leet

# puts "日付を出力し、/で区切る"
# #splitで分割し、joinでくっつける
# #pだけ打てば配列出力してくれる
# input = gets
# puts input.split.join("/")

# puts "pだけ打てばデバッグ用"
# input = "早く人間になりたい"
# puts input.chars
# p input.chars