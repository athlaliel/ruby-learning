# 4-4 mapメソッド
# 各要素に対してブロックを評価後に結果を新しい配列にして返す
numbers = [1,2,3,4,5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10}
puts new_numbers

numbers = [1,2,3,4,5]
new_numbers =  numbers.map { |n| n * 100}
puts new_numbers

# selectメソッド
# 戻り値の要素を集めた配列を返す
numbers = [1,2,3,4,5,6]
even_numbers = numbers.select { |n| n.even? }
puts even_numbers

# rejectメソッド
# 戻り値が真になった要素を除外した配列を返す
numbers = [1,2,3,4,5,6]
non_three_numbers = numbers.reject { |n| n % 3 == 0 }
puts non_three_numbers

# findメソッド
# 最初に戻り値が真になった要素を返す
numbers = [1,2,3,4,5,6]
even_number = numbers.find {|n| n.even?}
puts even_number

# injectメソッド 畳み込み演算を行うメソッド
# eachの場合
numbers = [1,2,3,4]
sum = 0
numbers.each {|n| sum += n}
puts  numbers
# injectメソッドの場合
# 順々に値を足した合計値が出る
numbers = [1,2,3,4]
sum = numbers.inject(0) {|result, n| result + n}
puts sum
