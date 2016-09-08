class Player
  attr_reader :history

  def initialize
    @history = []
  end

  def update_history(letter)
    @history << letter
  end

  def display_history
    history.each do |letter|
      print letter
      print ' '
    end
  end
end
