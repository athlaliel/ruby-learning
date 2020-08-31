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

    # 0~3の間でランダムに数字が変わる
    attack_num = rand(4)

    # 4分の1の確率でspecial_attackを実行
    if attack_num == 0
      puts "会心の一撃！！"
      # calculate_special_attackの呼び出し
      # 攻撃力の1.5倍の数値が戻り値として返ってくる
      damage = calculate_special_attack
    else
      puts "通常攻撃"
      damage = @offense - monster.defense
    end

    # monster.hp = monster.hp - damage
    # 自己代入：monster.hpからdamageを引いた値をmonster.hpに代入
    # 下記でも可能だが、下がより短い記述
    monster.hp -= damage

    puts "#{monster.name}は#{damage}のダメージを受けた！"
    puts "#{monster.name}の残りHPは#{monster.hp}だ"
  end

  def calculate_special_attack
    # 攻撃力が1.5倍
    offense * 1.5
  end

end


class Monster
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  HP_DOWN_HARF = 1.5

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def attack(brave)

    puts "#{@name}の攻撃！"

    damage = @offense - brave.defense
    
    brave.hp -= damage

    puts "#{brave.name}は#{damage}のダメージを受けた！"
    puts "#{brave.name}の残りHPは#{brave.hp}だ"

  end

end

brave = Brave.new(name:"テリー", hp:500,offense:150, defense:100)
monster = Monster.new(name:"スライム", hp:250, offense:200, defense:100)

brave.attack(monster)
monster.attack(brave)


# ヒアドキュメンと貴方で書けばputsや
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
