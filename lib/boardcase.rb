class BoardCase
  attr_accessor :case_position, :case_value
  
  def initialize (position)
    @case_position = position
    @case_value = " "
  end
  
end