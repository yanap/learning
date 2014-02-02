class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      check_health(warrior)
    elsif warrior.feel.captive?
      warrior.rescue!
    else
      warrior.attack!
    end
    @health = warrior.health
  end

  def must_rest
     max = 20
     rest_health = max * 0.8
     rest_health.to_i
  end

  def check_health(warrior)
    if warrior.health < must_rest
      walk_or_rest(warrior)
    else
      walk_or_back(warrior)
    end
  end

  def walk_or_rest(warrior)
    if @health > warrior.health
      warrior.walk!
    else
      warrior.rest!
    end
  end

  def walk_or_back(warrior)
    if warrior.feel.wall?
      warrior.walk! :backward
    else
      warrior.walk!
    end
  end
end
