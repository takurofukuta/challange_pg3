class Display
  def self.remaining_hp(brave, monster)
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
    if monster.hp == 0
      puts "#{monster.name} をやっつけた！"
    else
      puts "#{brave.name} はしんでしまった！"
    end
  end
end