require './character'

class Monster < Character

  HP_DOWN_HARF = 1.5
  CALC_HARF_HP = 0.5

  def initialize(**params)
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

    damage = calculate_damage(brave)
    cause_damage(target: brave, damage: damage)

    attack_message
    damage_message(target: brave, damage: damage)
  end

  private

  def calculate_damage(target)
    @offense - target.defense
  end

  def cause_damage(**params)
    damage = params[:damage]
    target = params[:target]

    target.hp -= damage
    target.hp = 0 if target.hp < 0
  end

  def transform
    transform_name = "キングスライム"

    transform_message(origin_name: @name, transform_name: transform_name)

    @offense *= HP_DOWN_HARF
    @name = transform_name
  end

end