class Character
  attr_reader :offense, :defense
  attr_accessor :hp, :name

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
end


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

class Monster < Character
  # attr_reader :offense, :defense
  # attr_accessor :hp, :name

  HP_DOWN_HARF = 1.5
  CALC_HARF_HP = 0.5

  def initialize(**params)
    # @name = params[:name]
    # @hp = params[:hp]
    # @offense = params[:offense]
    # @defense = params[:defense]
    super(
      name: params[:name]
      hp: params[:hp]
      offense: params[:offense]
      defense: params[:defense]
    )

    @transform = false
    @hp_calc = params[:hp]*CALC_HARF_HP
  end

  def attack(brave)
    if @hp <= @hp_calc && @transform == false

      @transform = true
      transform
    end

    puts "#{@name}の攻撃！"

    damage = calculate_damage(brave)
    cause_damage(target: brave, damage: damage)

    puts "#{brave.name}の残りHPは#{brave.hp}だ"
  end

  private

  def calculate_damage(target)
    @offense - target.defense
  end

  def cause_damage(**params)
    damage = params[:damage]
    target = params[:target]

    target.hp -= damage

    # もしターゲットのHPがマイナスになるなら0を代入
    target.hp = 0 if target.hp < 0

    puts "#{target.name}は#{damage}のダメージを受けた！"
  end

  def transform
    transform_name = "キングスライム"

    puts <<~EOS
    #{@name}は怒っている！
    #{@name}仲間を呼び合体!
    #{transform_name}になった！
    EOS

    @offense *= HP_DOWN_HARF
    @name = transform_name
  end

end

brave = Brave.new(name:"テリー", hp:500,offense:150, defense:100)
monster = Monster.new(name:"スライム", hp:250, offense:200, defense:100)

loop do
  brave.attack(monster)
  break if monster.hp <= 0

  monster.attack(brave)
  break if brave.hp <= 0
end

battle_result = brave.hp <= 0

if battle_result
  exp = (monster.offense + monster.defense)*2
  gold = (monster.offense + monster.defense)*3
  puts "#{brave.name}は戦闘に勝利した！"
  puts "#{exp}の経験値と#{gold}のお金をゲットした！"
else
  puts "#{brave.name}は戦闘に敗北した......"
  puts "GAME 0VER"
end
