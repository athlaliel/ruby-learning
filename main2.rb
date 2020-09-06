require './character'
require './brave'
require './monster'

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
