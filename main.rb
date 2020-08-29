class Brave

  # initializeメソッドを定義
  # new演算子から渡された引数を受け取る
  # 引数に**を記述：ハッシュしか受け取れなくなる
  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
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

brave = Brave.new(name:"テリー", hp:500,offense:150, defense:100)

# ヒアドキュメンと貴方で書けばputsや
# クオーテーションを書く回数が減る。
puts <<~TEXT
NAME：#{brave.name}
HP：#{brave.hp}
OFFENSE：#{brave.offense}
DEFENSE：#{brave.defense}
TEXT
