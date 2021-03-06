module MessageDialog
  def attack_message(**params)
    attack_type = params[:attack_type]

    puts "#{@name}の攻撃！"
    puts "会心の一撃！！" if attack_type == "special_attack"
  end

  def damage_message(**params)
    target = params[:target]
    damage = params[:damage]

    puts <<~EOS

    #{target.name}は#{damage}のダメージを受けた
    #{target.name}の残りHPは#{target.hp}だ

    EOS
  end

  def end_message(result)
    if result[:brave_win_flag]
      puts <<~EOS

      勇者は戦闘に勝利した
      #{result[:exp]}の経験値と#{result[:gold]}のゴールドを手に入れた

      EOS
    else
      puts <<~EOS

      勇者は戦闘に敗北してしまった.......
      おぉ、負けてしまうとは情けない
      GAMEOVER

      EOS
    end
  end

  def transform_message(**params)
    origin_name = params[:origin_name]
    transform_name = params[:transform_name]

    puts <<~EOS

    #{origin_name}は仲間を呼んで合体した！
    #{origin_name}は#{transform_name}へと姿を変えた！
    #{transform_name}が現れた！
    #{transform_name}が『仲間にしてやるぞ』と言いたげに睥睨している.....

    EOS
  end
end