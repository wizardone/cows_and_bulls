class Game

  def initialize
    create_ai_number
    puts "AI numbers have been calculated, your move: #{@number}"

    #guess = prompt 'Enter guess: '
    #puts guess
  end

  def create_ai_number
    @number = [*1..9].shuffle.slice(0, 4)
  end

  def check_guess(guess)

  end

  def prompt(*args)
    print(*args)
    gets
  end
end


Game.new
