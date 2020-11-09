omikuji = rand(1..10)
# puts omikuji

if omikuji == 1
    puts "大吉"
elsif omikuji == 2
    puts "中吉"
elsif omikuji <= 4
    puts "小吉"
elsif omikuji <= 7
    puts "凶"
else
    puts "大凶"
end

omikuji = rand(30..100)
if omikuji > 30
  puts "大吉"
else 
  puts "大凶"
end