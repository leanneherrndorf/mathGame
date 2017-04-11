#Keeps track of game and ends game if one player uses all their lives
require_relative 'player'
require_relative 'question'

PLAYER = Player
QUESTION = Question.new

class MathGame
  def initialize
    @player1 = nil
    @player2 = nil
    @continue_game = true
    @turn = 1
  end

  def game_start
    set_players
    while(@continue_game == true)
      get_question
    end
  end

  def set_players
    puts "Player 1, please enter your name!"
    name = gets.chomp
    @player1 = PLAYER.new(name)
    puts "Player 2, please enter your name!"
    name = gets.chomp
    @player2 = PLAYER.new(name)
end
  def get_question
    player = nil
    if @turn == 1
      player = @player1
    elsif @turn == -1
      player = @player2
    end
    puts "#{player.name}, you're up!"
    QUESTION.new_turn
    check_answer(player)
  end

  def check_answer(player)
    @turn = @turn * -1;
    guess = (gets.chomp).to_i
    if QUESTION.sum == guess
      puts "Correct!"
    else
      player.life -= 1
      puts "Wrong! No way! You're down to #{player.life} lives"
    end
    puts "------------------------------"
    check_lives(player)
  end
  def check_lives(player)

    if player.life <= 0
      game_over
      @continue_game =false
    end
  end

  def game_over
      winner = get_winner
      puts "Player #{winner.name} wins with a score of #{winner.life}/3"
      puts "----- GAME OVER -----"
      puts "Goodbye!"
  end
  def get_winner
    @player1.life > @player2.life ? @player1 : @player2
  end
end

