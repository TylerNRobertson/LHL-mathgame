class Game
   def initialize()
     @player1 = Player.new("Player1")
     @player2 = Player.new("Player2")
     @current_player = @player2
   end

   def switch_player()
     if @current_player == @player1
       @current_player = @player2
    else
      @current_player = @player1
    end
   end

   def run_turn()
     puts "--==New Turn==--"
     switch_player()
     puts "it's #{@current_player.player_name}'s turn"
     question = Question.new
     puts question.print
     if gets.chomp.to_i == question.answer
       puts "Congrats your a genius"
     else
       puts "Nope wrong."
       @current_player.lose_life
     end
     puts "#{@player1.player_name} has #{@player1.player_lives} lives left -- #{@player2.player_name} has #{@player2.player_lives} lives left"
   end

   def start_game()
     while (@player1.player_lives > 0 && @player2.player_lives > 0) do
       run_turn()
     end
     end_game()
   end

   def end_game()
     if @current_player.player_lives = 0
       puts "#{@current_player.player_name} has lost"
     end
   end

end
