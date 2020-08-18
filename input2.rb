puts "初めまして！\nあなたの名前を入力して教えてください"
name = gets.chomp
puts "次に好きな食べ物を教えて欲しいな"
food = gets.chomp

puts "あなたの名前は#{name}さんですね。\nそれから、好きな食べ物は#{food}ですね。\n教えてくれてどうもありがとう\n次の質問です"

brother_count = 0
brothers = []

puts "兄弟の名前は？"
brothers << gets.chomp
puts "兄弟は全部で何人ですか？"
brothers << gets.to_i
brother_count += 1

puts "兄弟の名前は？"
brothers << gets.chomp
puts "兄弟は全部で何人ですか？"
brothers << gets.to_i
brother_count += 1

puts "兄弟の人数は全部で#{brother_count}人です"