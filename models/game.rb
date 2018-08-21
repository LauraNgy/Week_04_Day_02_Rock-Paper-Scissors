class Game

  attr_reader :option1, :option2

  def initialize(option1, option2)
    @option1 = option1
    @option2 = option2
  end

  def playgame
    if @option1 == @option2
      return "It's a tie"
    end

    case @option1
      when 'rock'
        if @option2 == 'paper'
          return 'Player 2 wins by playing Paper'
        elsif @option2 == 'scissors'
          return 'Player 1 wins by playing Rock'
        else return "Invalid Input"
        end
      when 'paper'
        if @option2 == 'scissors'
          return 'Player 2 wins by playing Scissors'
        elsif @option2 == 'rock'
          return 'Player 1 wins by playing Paper'
        else return "Invalid Input"
        end
      when 'scissors'
        if @option2 == 'rock'
          return 'Player 2 wins by playing Rock'
        elsif @option2 == 'paper'
          return 'Player 1 wins by playing Scissors'
        else return "Invalid Input"
        end
    end
  end

end
