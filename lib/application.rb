# Cette classe va nous permettre de lancer le jeu. Elle va faire une boucle infinie de parties (on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game.

class Application

  def perform
    
    puts "-----------------------------------------------------------------------------------------
 |                                                                                          |
 |                              Bienvenue sur le jeu MORPION !                              |
 |     Le but du jeu est dest d’aligner avant son adversaire 3 symboles identiques          |
 |                      horizontalement, verticalement ou en diagonale !                    |
 |                                                                                          |
 -------------------------------------------------------------------------------------------"

    puts "Veuillez choisir le nom du premier joeur: "
    print ">"
    name = gets.chomp
    player1 = Player.new(name, "X")

    puts " Veuillez choisir le nom du deuxième joueur: "
    print ">"
    name = gets.chomp
    player2 = Player.new(name, "O")

    print " Appuyez sur \"Entrer\" pour lancer la partie"
    gets.chomp
    # Partie
    game = Game.new(player1, player2)
    turn_count = 0
    while turn_count < 9
      game.turn
    end
    while game.status == 'on going'
      system('clear')
      puts '=' * 50
      game.turn
      while game.status == 'game end'
        puts "Voulez-vous faire une autre partie ?"
        puts ' 1. Oui'
        puts ' 2. Non'
        print ' > '
        new_game = gets.chomp.to_s
        if new_game == '1'
          game.new_round
        else
          game.status = 'quit'
        end
      end
    end
    puts "A bientôt #{player1.name} et #{player2.name} !"
  end
end
