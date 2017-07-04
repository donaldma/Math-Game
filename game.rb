module MathGame
  class Game 
#initializes player 1 and player 2 for the game
    def initialize
      @players = []
      @players.push(Player.new('Player 1'))
      @players.push(Player.new('Player 2'))
    end
#defines a function score which shows the players and their remaining life points
    def score 
      puts "Score:"
      puts "#{@players[0].name}: #{@players[0].lives}"
      puts "#{@players[1].name}: #{@players[1].lives}"
    end
#defines the start game function
    def start 
      puts 'Let\'s play a MATH game'
#loops forever using cycle method until one of the player's life points hits zero, 
#then loop will break**  
      @players.cycle do |player|
        if @players[0].lives > 0 && @players[1].lives > 0
          question = Question.new
          score
          puts "========== NEW TURN =========="
          puts "#{player.name}: #{question.question}"
          print "> "
          user_answer = gets.chomp
          
          if question.correct? (user_answer)
            puts "NICE! You are correct."
          else
            puts "Yee right..!"
            player.wrong
          end
        else 
#loop **breaks when one player's life points hits zero 
          puts "#{player.name} wins with #{player.lives}/3 lives remaining!"
          puts "========== Game Over =========="
          puts "Thanks for playing!"
          break
        end
      end
    end
  end    
end