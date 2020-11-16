# 特定期間の西暦年と昭和年の対応表を作る
# 1行目：開始年
# 2行目：期間
# 昭和年 = 西暦年 - 1925
# 出力：西暦XXXX年は、昭和YY年です。
# 西暦年から西暦年+期間-1まで繰り返して、昭和年を求める
# 標準入力から、1行目に西暦年、2行目に期間が与えられます。この西暦年から始まる、期間分の「西暦年と昭和年の対応表」を出力するプログラムを作成してください。
# 対応表の各行は、「西暦XXXX年は、昭和YY年です。」と表示します。
# 昭和年は、西暦1926年から西暦1988年までで、「西暦年 - 1925」で求めることができます。
# なお。与えられる西暦年は、昭和年に対応しています。年数も、昭和年を超えることはありません
seireki = gets.to_i
period = gets.to_i

for period in seireki..(seireki + period -1)
    print "西暦#{period}年は、"
    showa = period - 1925
    puts "昭和#{showa}年です。"
end

# 西暦年と平成年の対応表を作る
# 1989年から2016年までをループで出力
# ループ内で、各西暦年を平成年に変換
for seireki in 1989..2016
  print "西暦#{seireki}年は、"
  heisei = seireki - 1988
  puts "平成#{heisei}年です。"
end

# 西暦年と昭和年の対応表
# 1926年から1988年までをループで出力
# ループ内で、各西暦年を昭和年に変換
for seireki in 1926..1988
  print "西暦#{seireki}年は、"
  showa = seireki - 1925
  puts "昭和#{showa}年です。"
end



#入力エリアの1行目にデータの個数が整数で与えられ、2行目以降に実際のデータが与えられています。
#入力エリアからデータを取得して、2行目以降のデータを出力するプログラムを作成してください。
num1 = gets.to_i

for i in 1..num1
    word = gets.chomp
    puts word
end

#入力した2つの数値を範囲にして、for inを実行する
num1 = gets.to_i
num2 = gets.to_i
for i in num1..num2
	puts i
end



count = gets.to_i
puts "データ個数 #{count}"

for i in 1..count
    line = gets
    puts "hello #{line}"
end

#戦闘の繰り返し
count = gets.to_i

for i in 1..count
    line = gets.chomp
    puts " #{line}は、スライムを倒した"
end

# 標準入力とループ処理
num = gets.to_i

for num in 1..num
    puts "スライムがあらわれた"
end