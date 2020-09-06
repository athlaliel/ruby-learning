module MessageDialog

  def attack_message(**params)
    attack_type = params[:attack_type]

    puts "#{@name}の攻撃！"
    puts "会心の一撃！！" if attack_type == "special_attack"
  end

  def damage_message
  end

  def end_message
  end

end