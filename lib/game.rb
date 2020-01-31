class Game

  attr_accessor :players, :current_player, :board, :status

  def initialize (player1, player2)

    @players = []
    @players << player1
    @players << player2
    @current_player = @players[0]
    @status = "on going"
    @board = Board.new

  end

  def turn
    turn_count = 0
    Show.new.show_board(@board, @players)
      while turn_count <9
        puts ""
        puts "Quelle case souhaitez vous marquer ?"
        print "> "
        player_choice = gets.chomp.to_s
        case player_choice
          when "A1"	
            @board.row_A[0].case_value = @current_player.symbol
          when "A2"
            @board.row_A[1].case_value = @current_player.symbol
          when "A3"
            @board.row_A[2].case_value = @current_player.symbol
          when "B1"	
            @board.row_B[0].case_value = @current_player.symbol
          when "B2"
            @board.row_B[1].case_value = @current_player.symbol
          when "B3"
            @board.row_B[2].case_value = @current_player.symbol
          when "C1"	
            @board.row_C[0].case_value = @current_player.symbol
          when "C2"
            @board.row_C[1].case_value = @current_player.symbol
          when "C3"
            @board.row_C[2].case_value = @current_player.symbol
         end
      turn_count +=1
      if @current_player == @players[0]
        @current_player = @players[1]
      else
        @current_player = @players[0]
      end
      Show.new.show_board(@board, @players)
      end

      print "\n Votre tour est terminé"
      gets.chomp
      game_end if @board.victory? == true || @board.count_turn == 9
  end


  def new_round
    @board = Board.new
    @status = "on going"
    puts "\n Continuons la partie !"
  end

  def game_end

    system('clear')
    puts "-" * 50
    puts "               Fin de la partie"
    puts "-" * 50

    if @board.victory?
      Show.new.show_board(@board, @players)
      print "#{@current_player.name}, vous avez gagné !"
      gets.chomp
    else
      Show.new.show_board(@board, @players)
      print "Match Nul"
    end
    @status = "game end"
  end    

end