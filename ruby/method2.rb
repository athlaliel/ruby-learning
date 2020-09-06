def car(name,ride)
  puts "あなたの乗っている車は#{name}産です。"
  puts "走行距離はおおよそ#{ride}kmです。"
  puts "ご協力、ありがとうございました"
end

puts "あなたの車のメーカーを入力してください"
maker = gets.chomp
puts "次いで、走行距離はどれくらいですか？"
distance = gets.to_i

puts car(maker, distance)
