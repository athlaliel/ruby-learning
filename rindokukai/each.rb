# 4-3-2
# rubyの繰り返し処理
# rubyにもfor文はあるが殆ど使われない

# 例文
numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum += n
end
puts numbers
# do〜endがブロックとなり、内部は自由にコードが書ける。

# 配列の要素削除の条件指定
a = [1,2,3,1,2,3]
a.delete(2)
puts a
# 奇数要素削除、oddメソッド
b = [1,2,3,1,2,3]
b.delete_if do |n|
  n.odd?
end
puts b
# delete_ifメソッドは配列の要素を順番に取り出す

# 4-3-5
# ブロックは改行を入れなくても良い
# do〜endではなく、{}でも代用可能
# 1行で短く書きたいとき、改行を使い長いブロックにはdo〜end推奨
numbers = [1,2,3,4]
sum = 0
numbers.each {|n| sum += n}
puts numbers
