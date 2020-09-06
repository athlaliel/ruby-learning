jobs = ["戦士", "魔道士", "暗殺者", "盗賊"]
jobs.each do |job|
  puts "名前: #{job}"
end

4.times do |i|
  puts i + 1
end

member_count = 0
works = []

2.times do
  work = {}
  puts "職業は何ですか？"
  work[:name] = gets.chomp
  puts "実務経験は何年ですか？"
  work[:year] = gets.to_i
  works << work
  if work[:year] >= 1
    puts "#{work[:name]}さんは、実務経験が#{work[:year]}年以上なので採用です。"
    member_count += 1
  else
    puts "#{work[:name]}さんは、実務経験が基準に満たないため、お見送りです。"
  end
end

puts "実務経験が#{member_count}年以上の方は先に進んで下さい。"
