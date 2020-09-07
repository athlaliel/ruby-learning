#多次元配列を使ったゲーム
msg0 = "三本の分かれ道だ。どこに進もう…\n" + "1 左\n2 真ん中\n3 右"
msg1 = "あっ！\n足を滑らせて崖から落ちてしまった。\nGAME " + "OVER"
msg2 = "しばらく歩いていると…\nまた分かれ道を見つけた\n" + "1 左\n2 真ん中\n3 右"
msg3 = "奥へ進むと…" + "宝箱を見つけた！\n" + "どうしようか\n" + "1 開ける\n2 開けない\n3 ぶっ壊してみる"
msg4 = "宝箱はミミックだった。\n勇者たちは食べられてしまった。\nGAME " + "OVER"
msg5 = "宝箱を開けずに進むと、入り口に戻ってしまった。\n" + "まだ冒険を続ける？\n" + "1 続ける\n2 やめる"
msg6 = "宝箱はミミックだった。\n壊した衝撃でミミックを倒した！\n" + "宝箱からまばゆい光が溢れ出す！\n" + "勇者たちは財宝を手に入れた！\n" + "congratulation!!"
msg7 = "勇者たちはお家に帰った。\nお疲れ様です。\nGAME " + "OVER"

tbl = [
  [msg0, 1, 2, 3],
  [msg1, nil, nil, nil],
  [msg2, 2, 3, 1], # 道順を変えている
  [msg3, 4, 5, 6],
  [msg4, nil, nil, nil],
  [msg5, 0, 7, nil],
  [msg6, nil, nil, nil],
  [msg7, nil, nil, nil]
]


puts "勇者たちの冒険"
sleep 1
scene = 0
while true
  scenedate = tbl[scene]
  message = scenedate[0]
  puts message

  if (scenedate[1] == nil)
    exit
  end

  print "数字を入力してください："
  scene = scenedate[gets.to_i]  #正しい値が入るように分岐させる


  sleep 0.5
  print "\n"
end