class Brave

  # initializeメソッドを定義
  def initialize
    @name = "テリー"
    @hp = 500
    @offense =150
    @defense = 100
  end

  # ゲッターの定義？
  def name
    @name
  end

  def hp
    @hp
  end

  def offense
    @offense
  end

  def defense
    @defense
  end

end

brave = Brave.new

# ヒアドキュメンと貴方で書けばputsや
# クオーテーションを書く回数が減る。
puts <<~TEXT
NAME：#{brave.name}
HP：#{brave.hp}
OFFENSE：#{brave.offense}
DEFENSE：#{brave.defense}
TEXT
