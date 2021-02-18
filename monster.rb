class Monster < Character
  def initialize(name:, hp:, offense:, defense:)
    super
    puts "#{@name} が現れた！"
  end

  def attack(braver)
    return if @hp == 0
    damage = @offense - braver.defense / 2
    puts "#{@name} の攻撃!"
    puts "#{braver.name} は #{damage} のダメージを受けた！"
    braver.hp -= damage
    braver.hp = 0 if braver.hp < 0

  end
end