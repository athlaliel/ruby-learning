class Brave

  def name=(name)
    @name = name
  end

  # ゲッターの定義？
  def name
    @name
  end

  def hp=(hp)
    @hp = hp
  end

  def hp
    @hp
  end

  def offense=(offense)
    @offense = offense
  end

  def offense
    @offense
  end

  def defense=(defense)
    @defense = defense
  end

  def defense
    @defense
  end

end

brave = Brave.new

brave.name = "テリー"
brave.hp = 500
brave.offense = 150
brave.defense = 100

# ヒアドキュメンと貴方で書けばputsや
# クオーテーションを書く回数が減る。
puts <<~TEXT
NAME：#{brave.name}
HP：#{brave.hp}
OFFENSE：#{brave.offense}
DEFENSE：#{brave.defense}
TEXT

# puts "NAME: #{brave.name}"
# puts "HP: #{brave.hp}"
# puts "OFFENSE: #{brave.offense}"
# puts "DEFENSE: #{brave.defense}" 