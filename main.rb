class Brave
  # attr_readerの記述でゲッターを省略することができる
  # 複数の値を同時に指定することができる
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  # 必殺攻撃の計算に使う定数
  SPECIAL_ATTACK_CONSTANT = 1.5

  # new演算子から渡された引数を受け取る
  # 引数に**を記述：ハッシュしか受け取れなくなる
  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

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

  # **paramsで受け取る
  def calculate_damage(**params)
    # 変数に格納することによって将来ハッシュのキーに変更があった場合でも変更箇所が少なくて済む

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
    puts "#{target.name}は#{damage}のダメージを受けた"
  end

  def calculate_special_attack
    @offense * SPECIAL_ATTACK_CONSTANT
  end

end


class Monster
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  HP_DOWN_HARF = 1.5
  CALC_HARF_HP = 0.5

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]

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

    # damage = @offense - brave.defense
    # brave.hp -= damage

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

    target -= damage
    puts "#{brave.name}は#{damage}のダメージを受けた！"
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

brave.attack(monster)
monster.attack(brave)


# ヒアドキュメントで書けばputsや
# クオーテーションを書く回数が減る。

# puts <<~TEXT
# NAME：#{brave.name}
# HP：#{brave.hp}
# OFFENSE：#{brave.offense}
# DEFENSE：#{brave.defense}
# TEXT

# brave.hp -= 30
# puts "#{brave.name}はダメージを受けた！ 残りHPは#{brave.hp}だ"

# puts <<~TEXT
# NAME: #{monster.name}
# HP: #{monster.hp}
# OFFENSE: #{monster.offense}
# DEFENSE: #{monster.defense}
# TEXT
