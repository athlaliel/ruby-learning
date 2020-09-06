class Games_controller

  EXP_CONSTANT = 2
  GOLD_CONSTANT = 3

  def battle(**params)
    brave = params[:brave]
    monster = params[:monster]

    loop do
      brave.attack(monster)
      break if battle_end?(monster)
      monster.attack(brave)
      break if battle_end?(brave)
    end

  # battle_result = brave.hp <= 0

  if battle_result(brave)
    result = calculate_of_exp_and_gold(monster)
    puts "#{brave.name}は戦闘に勝利した！"
    puts "#{result[:exp]}の経験値と#{result[:gold]}のお金をゲットした！"
  else
    puts "#{brave.name}は戦闘に敗北した......"
    puts "GAME 0VER"
  end
end

private

  def battle_end?(character)
    character.hp <= 0
  end

  def battle_result(brave)
    brave.hp > 0
  end

  def calculate_of_exp_and_gold(monster)
    exp = (monster.offense + monster.defense)* EXP_CONSTANT
    gold = (monster.offense + monster.defense)* GOLD_CONSTANT
    result = {exp: exp, gold: gold}

    result
  end
end

