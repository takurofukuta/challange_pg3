class RemainingHp
  def initialize(brave, monster)
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
    if monster.hp == 0
      puts "#{monster.name} をやっつけた！"
    elsif brave.hp == 0
      puts "#{brave.name} はしんでしまった！"
    end
  end
end