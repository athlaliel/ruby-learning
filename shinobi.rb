class Shinobigame

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

    puts "①正面から切り伏せる！\n②背後から忍び寄って暗殺..."
    gate = gets.to_i
    
      if gate == 1
        puts "侵入者に気づいた浪人は刀を抜いて応戦して来ました！"
      elsif gate == 2
        puts "貴方は眠そうに隙を見せた浪人を背後から切り伏せる事に成功しました。"
      else
        puts "浪人は予想以上に強く、逆に斬り伏せられてしまいました！\n\nGAME-OVER"
    end
  elsif action == 2
    puts "貴方は標的の居る屋敷の屋根裏に潜入しました。"
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

end