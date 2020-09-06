names = ["益山", "宮代", "藤沢", "金田", "田中"]
names.each do |name|
  puts "名前: #{name}"
end

3.times do |i|
  puts i + 1
end

member_count = 0
students = []

5.times do
  student = {}
  puts "受講者の名前は？"
  student[:name] = gets.chomp
  puts "受講者のテストの点数は?"
  student[:score] = gets.to_i
  students << student
  if student[:score] >= 75
    puts "#{student[:name]}さんは合格です"
    member_count += 1
  else
    puts "#{student[:name]}さんは不合格です"
  end
end

puts "テストの合格者は#{member_count}人です"

