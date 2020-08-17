def mixer(fruit)
  puts "#{fruit}を細かく砕く"
  return "#{fruit}ジュース"
end

puts "フルーツを入力してください"
input = gets.chomp

puts mixer(input)