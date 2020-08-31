class Brave

  # attr_readerの記述でゲッターを省略することができる
  # 複数の値を同時に指定することができる
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  # initializeメソッドを定義
  # new演算子から渡された引数を受け取る
  # 引数に**を記述：ハッシュしか受け取れなくなる
  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def attack(monster)
    puts "テスト:#{monster.name}のHPを表示 -> #{monster.hp}"
  end

end

brave.attack(monster)

class Monster

  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

end

brave = Brave.new(name:"テリー", hp:500,offense:150, defense:100)
monster = Monster.new(name:"スライム", hp:250, offense:200, defense:100)

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
