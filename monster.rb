class Monster < Character
  def initialize(name:, hp:, offense:, defense:)
    super
    puts "#{@name} が現れた！"
  end

  def attack(brave)
    damage = @offense - brave.defense / 2
    puts "#{@name} の攻撃!"
    puts "#{brave.name} は #{damage} のダメージを受けた！"
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0

  end
end