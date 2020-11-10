#模範解答
# 距離に合わせてメッセージを表示する
distance = rand(1..30)
puts "あなたの距離は#{distance}メートルです"

##ここにifを追加する
if distance <= 9 || distance >= 21
    puts "セーフ！"
end

# 順位に合わせてメッセージを表示する
number = rand(1..10)
puts "あなたの順位は#{number}位です"

flag = number <= 3
##ここにifを追加する
if flag
    puts "入賞おめでとう！"
end

#俺が書いたもの
# if distance >= 1 || distance <= 9
#   puts "あなたの距離は#{distance}メートルです"
#   puts "セーフ"
# elsif distance > 10 || distance <= 20
#   puts "あなたの距離は#{distance}メートルです"
# else distance >= 21 || distance < 30
#   puts "あなたの距離は#{distance}メートルです"
#   puts "セーフ！"
# end





# 順位に合わせてメッセージを表示する
number = rand(1..10)
# puts "あなたの順位は#{number}位です"

##　ここにifを追加する
if number >= 2 && number <= 5
    puts "あなたの順位は#{number}位です"
    puts "あと少し！"
elsif number < 1
    puts "あなたの順位は#{number}位です"
else
    puts "あなたの順位は#{number}位です"
end


#２つ以上の条件は&&で繋ぐパターン
number3 = rand(1..100)
puts number3
if number3 >= 30 && number3 <= 60
    puts "あたり"
else 
    puts "外れ"
end


number = rand(1..5)
puts "あなたの順位は#{number}位です"
if number == 1
  puts "おめでとう！"
elsif number == 2
  puts "あと少し！"
else
  puts "よくがんばったね"
end


puts "次の質問に答えてください\n問題①\nあなたは男ですか？女ですか？"
sex = gets.chomp

if sex >= "男" && sex >= "女"
  puts "あなたは男性ですね。ありがとう！"
elsif sex == ""
  puts "答えたくない.....そうですか....."
elsif sex == "なし"
  puts "無姓生命体なのですか？"
else
  puts "あなたは女性ですね。ありがとう！"
end

sleep 2

puts "問題②\nあなたは日本人ですか？\nYES or NO を入力してください"
japan = gets.chomp

if japan >= "YES" && japan >= "NO"
  puts "生粋の日本人ですね"
elsif japan == ""
  puts "えっ？答えたくないって？"
else
  puts "海外の方なんですね。日本へようこそ！"
end

puts "問題③\nあなたのプログラミング関連の日々の学習時間は何時間ですか？\n時間単位で入力をお願いします"
time = gets.to_i

if time >= 1
  puts "毎日学習お疲れ様です。継続していきましょうね"
elsif time == ""
  puts "えっ？学習してない？最初の目的を忘れてはなりませんよ"
else
  puts "もうちょっと頑張りましょう。まずは目標を定めましょうね"
end

puts "\n以上であなたが#{sex}であること、加えて、日本人かの答えが#{japan}であることがわかりました。\n\nさらに勉強している時間も一日#{time}時間と分かりました。\nご協力どうもありがとう！"

