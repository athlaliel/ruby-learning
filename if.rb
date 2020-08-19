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

puts "問題②\nあなたは日本人ですか？\nYES or NO を入力してください"
japan = gets.chomp

if japan >= "YES" && japan >= "NO"
  puts "生粋の日本人ですね"
elsif japan == ""
  puts "えっ？答えたくないって？"
else
  puts "海外の方なんですね。日本へようこそ！"

puts "以上であなたが#{sex}であること、加えて、日本人かの答えが#{japan}であることがわかりました。\nご協力どうもありがとう！"
end
