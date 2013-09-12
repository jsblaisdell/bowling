class BowlingGame
  attr_reader :rolls, :score

  def initialize
    @rolls = []
    @score = 0
  end

  def roll(num)
    @score += num
  end
end
