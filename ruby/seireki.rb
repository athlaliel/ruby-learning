seireki = Time.now.year
print "西暦#{seireki}年は"

heisei = seireki - 1988
puts "平成#{heisei}年です。"



puts "西暦年から1925を引くと昭和年がでます。"
seireki = rand(1926..1988)	# 西暦年
print "西暦#{seireki}年は"

# 昭和年を計算する
showa = seireki - 1925
# 昭和年を出力する
puts "昭和#{showa}年です。"