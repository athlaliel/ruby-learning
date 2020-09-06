require './character'

class Brave < Character
  # attr_reader :name, :offense, :defense
  # attr_accessor :hp

  SPECIAL_ATTACK_CONSTANT = 1.5

  # def initialize(**params)
  #   @name = params[:name]
  #   @hp = params[:hp]
  #   @offense = params[:offense]
  #   @defense = params[:defense]
  # end

  def attack(monster)
    puts "#{@name}の攻撃！"

    attack_type = attack_pattern
    damage = calculate_damage(target: monster, attack_type: attack_type)
    cause_damage(target: monster, damage: damage)

    puts "#{monster.name}の残りHPは#{monster.hp}だ"
  end

private
  def attack_pattern
    # 0~3の間でランダムに数字が変わる
    attack_num = rand(4)

    # 4分の1の確率でspecial_attackを実行
    if attack_num == 0
      puts "会心の一撃！！！"
      "special_attack"
    else
      puts "通常攻撃！"
      "normal_attack"
    end
  end

  def calculate_damage(**params)

    target = params[:target]
    attack_type = params[:attack_type]

    if attack_type == "special_attack"
      calculate_special_attack - target.defense
    else
      @offense - target.defense
    end
  end

  def cause_damage(**params)
    damage = params[:damage]
    target = params[:target]
    
    target.hp -= damage
    target.hp = 0 if target.hp < 0

    puts "#{target.name}は#{damage}のダメージを受けた"
  end

  def calculate_special_attack
    @offense * SPECIAL_ATTACK_CONSTANT
  end
end