class RemainingHp
  def initialize(braver, monster)
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{braver.name}】HP: #{braver.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
    if monster.hp == 0
      puts "#{monster.name} をやっつけた！"
    elsif braver.hp == 0
      puts "#{braver.name} はしんでしまった！"
    end
  end
end