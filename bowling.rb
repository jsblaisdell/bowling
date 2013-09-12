class BowlingGame
  attr_reader :rolls

  def initialize
    @rolls = []
    @total_score  = 0
    @current_roll = 0
  end

  # Record a roll in the game.
  #
  # pins - The Integer number of pins knocked down in this roll.
  #
  # Returns nothing.
  def roll(pins)
    @rolls.push(pins)
  end

  # Returns the Integer score for this game.
  #
  # Returns score.
  def score
    while @current_roll < @rolls.size - 1
      init_roll

      if strike?
        score_strike
      elsif spare?
        score_spare
      else
        score_normal
      end
    end

    return @total_score
  end

  private

  # Initializes score method.
  def init_roll
    @roll      = @rolls[@current_roll]
    @next_roll = @rolls[@current_roll + 1]
  end

  # Returns true for a strike.
  #
  # Returns true or false.
  def strike?
    @roll == 10
  end

  # Scores a strike.
  #
  # Returns score.
  def score_strike
    @total_score += 10 + @rolls[@current_roll + 1] + @rolls[@current_roll + 2]
    @current_roll += 1
  end

  # Returns true for a spare.
  #
  # Returns true or false.
  def spare?
    @roll + @next_roll == 10
  end

  # Scores a spare.
  #
  # Returns score.
  def score_spare
    @total_score += 10 + @rolls[@current_roll + 2]
    @current_roll += 2
  end

  # Scores normally.
  #
  # Returns score.
  def score_normal
    @total_score += @roll + @next_roll
    @current_roll += 2
  end
end
