require './brave'
require './monster'
require './games_controller'

puts <<~text
---------------------------------------
|                                     |
|              忍GAME                 |
|                                     |
---------------------------------------
text


puts "あなたは主君の命で行動する忍者です\n\n以下の任務に向かいます"

puts <<~text
---------------------------------------
|                                     |
|           悪徳商人を成敗せよ        |
|                                     |
---------------------------------------
text

sleep 1

games_controller = Games_controller.new

terry = Brave.new(name:"テリー", hp:500, offense:150, defense:100)
slime = Monster.new(name:"スライム", hp:250, offense:200, defense:100)

games_controller.battle(brave: terry, monster: slime)
