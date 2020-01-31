class Board 
  attr_accessor :row_A, :row_B, :row_C, :count_turn

  def initialize
    column = ["1","2","3"]
    @row_A = []
    @row_B = []
    @row_C = []
    column.each {|column| row_A << BoardCase.new("A"+column)}
    column.each {|column| row_B << BoardCase.new("B"+column)}
    column.each {|column| row_C << BoardCase.new("C"+column)}
    @count_turn = 0
  end


  def victory?
    # LIGNES
    # A
    return true if @board.row_A[0].case_value == @board.row_A[1].case_value && @board.row_A[1].case_value == @board.row_A[2].case_value && @board.row_A[0].case_value != " "
    # B
    return true if @board.row_B[0].case_value == @board.row_B[1].case_value && @board.row_B[1].case_value == @board.row_B[2].case_value && @board.row_B[0].case_value != " "
    # C
    return true if @board.row_C[0].case_value == @board.row_C[1].case_value && @board.row_C[1].case_value == @board.row_C[2].case_value && @board.row_C[0].case_value != " "
    # COLONNES
    # 1
    return true if @board.row_A[0].case_value == @board.row_B[0].case_value && @board.row_C[0].case_value == @board.row_B[0].case_value && @board.row_A[0].case_value != " "
    # 2
    return true if @board.row_A[1].case_value == @board.row_B[1].case_value && @board.row_C[1].case_value == @board.row_B[1].case_value && @board.row_A[1].case_value != " "
    # 3
    return true if @board.row_A[2].case_value == @board.row_B[2].case_value && @board.row_C[2].case_value == @board.row_B[2].case_value && @board.row_A[2].case_value != " "
    # DIAGONALES
    return true if @board.row_A[0].case_value == @board.row_B[1].case_value && @board.row_C[2].case_value == @board.row_B[1].case_value && @board.row_A[0].case_value != " "
    return true if @board.row_A[2].case_value == @board.row_B[1].case_value && @board.row_C[0].case_value == @board.row_B[1].case_value && @board.row_A[2].case_value != " "
  end
end
