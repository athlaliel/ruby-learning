puts "スライムが現れた！サイコロを振って出た目のダメージを与える！\n数字を入力せよ"
hit = gets.to_i
# puts hit
if hit < 6
    puts "スライムに#{hit}のダメージを与えた"
else
    puts "クリティカルヒット！スライムに#{hit}のダメージ"
end

