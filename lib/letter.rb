class Letter
  attr_reader :status, :value

  def initialize(value)
    @value = value
    @status = :unsolved
  end

  def display
    solved? ? value : hidden_value
  end

  def solve
    @status = :solved
  end

  def solved?
    status == :solved
  end

  private

  def hidden_value
    '_'
  end
end
