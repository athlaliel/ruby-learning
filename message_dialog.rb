module MessageDialog

  def attack_message(**params)
    attack_type = params[:attack_type]

    puts "#{@name}の攻撃！"
    puts "会心の一撃！！" if attack_type == "special_attack"
  end

  def damage_message(**params)
    target = params[:target]
    damage = params[damage]

    puts <<~EOS

    #{target.name}は#{damage}のダメージを受けた
    #{target.name}の残りHPは#{target.hp}だ

    EOS
  end

  def end_message
  end

end