require "./character"
require "./monster"
require "./braver"
require "./remaining_hp"

# monster = Monster.new(name: 'アークデーモン', hp: 210, offense: 140, defense: 80)
monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)
braver = Braver.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)

while true
  braver.attack(monster)
  monster.attack(braver)
  RemainingHp.new(braver,monster)
  break if monster.hp == 0 || braver.hp == 0
end
