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

puts brave.name
puts brave.hp
puts brave.offense
puts brave.defense