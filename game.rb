class Game

  def initialize
    create_ai_number
    puts "AI numbers have been calculated, enter four digits like this: 1,2,3,4. AI number #{@number}"

    while true do
      guess = prompt 'Enter number: '
      guess = guess.split(',')
      check_guess(guess)
      break if @number == guess
    end
    puts "You guessed. You smart!"
  end

  def create_ai_number
    #Find better way here
    @number = [*1..9].shuffle.slice(0, 4)
  end

  def check_guess(guess)
    cows = bulls = 0
    guess.each_with_index do |num, index |
      bulls += 1 if @number[index] == num.to_i
      cows += 1 if @number.include?(num.to_i)
    end
    puts "You have #{cows} cows and #{bulls} bulls"
  end

  def prompt(*args)
    print(*args)
    gets
  end
end


Game.new
