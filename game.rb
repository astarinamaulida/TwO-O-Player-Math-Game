require './player.rb'
require './question.rb'

class Game

  # PLAYERS
  def initialize
    @current_player
    @player1
    @player2
  end

  # STARTING NEW GAME
  def start_game
    puts "----------------------------------"
    puts "Welcome to Two-O-Player Math Game!"
    puts "----------------------------------"
    puts "\n"
    puts "To begin the game, please insert your name, player 1!"
    @player1 = Player.new(gets.chomp)

    puts "Great! Now player 2, please insert your name"
    @player2 = Player.new(gets.chomp)

    puts "Alright! Let's begin!"
    puts "\n"
    @current_player = @player1

    play while (@player1.life > 0 && @player2.life > 0)
    end_game
  end

  # CHANGE PLAYERS
  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end
  
  # QUESTIONS
  def play
    question = Question.new
    puts "\n"
    puts "-------------NEW TURN-------------"
    puts "\n"
    puts "Here's question for #{@current_player.name}"
    puts "What does #{question.number1} + #{question.number2} equal?"
    answer = gets.chomp.to_i

    if answer == question.solution
      puts "\n"
      puts "Hurray! You are correct!"
    else
      puts "\n"
      puts "Oh oh~ That's a wrong answer! The correct answer is #{question.solution}"
      @current_player.life -= 1
      puts "\n"
    end
  
    puts "Current score: #{@player1.name} - #{@player1.life}/3 VS #{@player2.name} - #{@player2.life}/3"

    switch_player
  end

  # GAME ENDING
  def end_game
    puts "-------------GAME OVER-------------"
    puts "#{@current_player.name} is the winner with score of #{@current_player.life}/3!"
    puts "Play again? [Enter 'Y' to continue]"
    if (gets.chomp == 'Y')
      start_game
    else
      puts "See you again!"
    end
  end
end

