class Player
  attr_accessor :gold_coins, :health_points, :life
  def initialize
    @gold_coins = 0
    @health_points = 10
    @life = 5
  end

  def level_up()
    @life += 1
  end

  def collect_treasure()
    puts "#{@gold_coins += 10}"
    puts level_up()
  end

  def do_battle(damage)
    @health_points -= damage
      if@life == 1
        restart()
        puts "game over, restarting"
      elsif @health_points <= 0
        @health_points == 10
        @life -= 1
        puts "life lost"

      else
        puts @health_points
      end
  end

  def restart
    @life = 5
    @gold_coins = 0
    @health_points = 10
  end

end
