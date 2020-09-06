require './character'

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
      name: params[:name],
      hp: params[:hp],
      offense: params[:offense],
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

    # puts "#{@name}の攻撃！"

    damage = calculate_damage(brave)
    cause_damage(target: brave, damage: damage)

    attack_message
    damage_message(target: brave, damage: damage)

    # puts "#{brave.name}の残りHPは#{brave.hp}だ"
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

    # puts "#{target.name}は#{damage}のダメージを受けた！"
  end

  def transform
    transform_name = "キングスライム"

    # puts <<~EOS
    # #{@name}は怒っている！
    # #{@name}仲間を呼び合体!
    # #{transform_name}になった！
    # EOS

    @offense *= HP_DOWN_HARF
    @name = transform_name
  end

end