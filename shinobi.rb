puts <<~text
---------------------------------------
|                                     |
|              忍GAME                 |
|                                     |
---------------------------------------
text


puts "あなたは主君の命で行動する忍者です\n\n以下の任務に向かいます"

puts <<~text
---------------------------------------
|                                     |
|           悪徳商人を成敗せよ        |
|                                     |
---------------------------------------
text

puts "不正な取引で私腹を肥やす悪徳商人の屋敷に貴方はやって来ました。\n忍として誅を下します。\n\n以下の行動を選択してください。"

puts "①:正面突破！\n②:忍らしく潜入する\n"

action = gets.to_i

if action == 1
  puts "正面突破ですね。\n\n屋敷の正門には雇われた浪人が見張りについています。\nどう対処しますか？"
elsif action == 2
  puts "潜入を選択した貴方は標的の居る屋敷の屋根裏に進入しました。"
else
  puts "どちらも選択しなかった貴方は、あろう事か、怖気付いて任務を放棄して逃走しました。"
  puts <<~text
  ---------------------------------------
  |                                     |
  |           GAME-0VER                 |
  |                                     |
  ---------------------------------------
  text
end

puts "次の選択です。"