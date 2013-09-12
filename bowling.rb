class BowlingGame
  attr_reader :rolls

  def initialize
    @rolls = []
  end

  def score
    @rolls.reduce(:+)
  end

  def roll(num)
    @rolls << num
  end
end
