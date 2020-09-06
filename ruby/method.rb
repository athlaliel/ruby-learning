def mixer(fruit)
  puts "#{fruit}を細かく砕く"
  return "#{fruit}ジュース"
end

puts "フルーツを入力してください"
input = gets.chomp

puts mixer(input)


def study(programing, day)
  puts "\n今日の学習内容は#{programing}ですね。\n今日もお疲れ様でした。"
  return "#{programing}の学習は大変なので、毎日#{day}時間と目標を定めて継続学習していきましょう。"
end

puts "\n今日勉強した事を記入してください"
type = gets.chomp
puts "\n何時間勉強しましたか？"
time = gets.to_i

puts study(type, time)
