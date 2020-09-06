class Games_controller

  EXP_CONSTANT = 2
  GOLD_CONSTANT = 3

  def battle(**params)
    build_characters(params)
    # brave = params[:brave]
    # monster = params[:monster]

    loop do
      @brave.attack(@monster)
      break if battle_end?
      @monster.attack(@brave)
      break if battle_end?
    end

  # battle_result = brave.hp <= 0
  battle_judgement
end

private

  def build_characters(**params)
    @brave = params[:brave]
    @monster = params[:monster]
  end

  def battle_end?
    @brave.hp <= 0 || @monster.hp <= 0
  end

  def brave_win?
    @brave.hp > 0
  end

  def battle_judgement

    if brave_win?
      result = calculate_of_exp_and_gold
      # puts "#{@brave.name}は戦闘に勝利した！"
      # puts "#{result[:exp]}の経験値と#{result[:gold]}のお金をゲットした！"
    else
      # puts "#{@brave.name}は戦闘に敗北した......"
      # puts "GAME 0VER"
    end
  end

  def calculate_of_exp_and_gold
    exp = (@monster.offense + @monster.defense)* EXP_CONSTANT
    gold = (@monster.offense + @monster.defense)* GOLD_CONSTANT
    result = {exp: exp, gold: gold}

    result
  end
end

