#whileを使って、20から10までの奇数を一行ずつカウントダウン表示するプログラムを作成してください。
i = 19
while i > 9
    number = 2
    puts i
    i = i - number
end

#whileを使って、20から10まで、数値を一行ずつカウントダウン表示するプログラムを作成してください。
i = 20
while i > 9
    hit = 1
    puts i
    i = i - hit
end

puts "バブルスライムが現れた\n与えるダメージを数値で入力せよ！"
#バブルスライムを倒すまで、数字を入力し続けるループ処理
#面倒ならrandメソッドを使うと良い
hp = 100
while hp > 0
    hit = gets.to_i
    puts "バブルスライムに#{hit}のダメージを与えた"
    hp = hp - hit
    #hp -= hit
end
puts "バブルスライムを倒したぞ！"

#マイナス版
# i = 1	# カウンタ変数を初期化
# while i <= 10
#     puts i		# 繰り返し処理
#     i = i + 1	# カウンタ変数を更新
# end

i = 5	# カウンタ変数を初期化
while i > 0
    puts i		# 繰り返し処理
    i -= 1	# カウンタ変数を更新
end