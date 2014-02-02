class Health

  def save
    @health = 9
  end

  def play
    if @health.nil?
      @health = 20
    end
    save
  end

  def print
    p @health
  end

end

h = Health.new
h.play
h.print
