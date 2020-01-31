class Show

  def show_board(board,players)

    puts ""
    puts "          Joueur 1 joue avec le symbole #{players[0].symbol}                              "
    puts "          Joueur 2 joue avec le symbole #{players[1].symbol}                              "
    puts "                                                                                                               "
    puts "              1   2   3                                                                                        "
    puts "            ┌───┬───┬───┐                                                                                    "
    puts "          A │ #{board.row_A[0].case_value} │ #{board.row_A[1].case_value} │ #{board.row_A[2].case_value} │     "
    puts "            ├───┼───┼───┤                                                                                    "
    puts "          B │ #{board.row_B[0].case_value} │ #{board.row_B[1].case_value} │ #{board.row_B[2].case_value} │     "
    puts "            ├───┼───┼───┤                                                                                    "
    puts "          C │ #{board.row_C[0].case_value} │ #{board.row_C[1].case_value} │ #{board.row_C[2].case_value} │     "
    puts "            └───┴───┴───┘                                                                                    "
  
  end

end
