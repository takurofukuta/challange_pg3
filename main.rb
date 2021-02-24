require "./character"
require "./monster"
require "./brave"
require "./remaining_hp"

monster = Monster.new(name: 'アークデーモン', hp: 210, offense: 140, defense: 80)
# monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)
brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)

while true
  brave.attack(monster)
  monster.attack(brave)
  RemainingHp.new(brave,monster)
  break if monster.hp == 0 || brave.hp == 0
end
