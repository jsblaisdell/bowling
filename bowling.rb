class BowlingGame
  attr_reader :rolls

  def initialize
    @rolls = []
  end

  def score
    total_score  = 0
    current_roll = 0

    while current_roll < @rolls.size - 1
      roll      = @rolls[current_roll]
      next_roll = @rolls[current_roll + 1]

      if roll + next_roll == 10
        total_score += 10 + @rolls[current_roll + 2]
      else
        total_score += roll + next_roll
      end

      current_roll += 2
    end

    return total_score
  end

  def roll(num)
    @rolls << num
  end
end
