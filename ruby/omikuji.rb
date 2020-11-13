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


#下記のくじは失敗作、ランダムの比較演算子がうまく動いていない。
# kuji = rand(1..50)
# if kuji < rand(1..10)
#     puts "番号は#{kuji}なので大吉です"
# elsif kuji < rand(11..20)
#     puts "番号は#{kuji}なので中吉です"
# elsif kuji < rand(21..30)
#     puts "番号は#{kuji}なので小吉です"
# elsif kuji > rand(31..40)
#     puts "番号は#{kuji}なので凶です"
# else
#     puts "番号は#{kuji}なので大凶です"
# end