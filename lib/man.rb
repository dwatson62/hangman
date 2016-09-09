class Man
  attr_reader :level

  def initialize
    @level = 0
  end

  def update
    @level += 1
  end

  def display
    puts stages[level]
  end

  def stages
    [zero, one, two, three, four, five, six, seven, eight, nine, ten]
  end

  def dead?
    level == stages.length - 1
  end

  private

  def zero
  end

  def one
    """
    |
    """
  end

  def two
    """
    |
    |
    """
  end

  def three
    """
    |
    |
    |
    """
  end

  def four
    """
    __
      |
      |
      |
    """
  end

  def five
    """
    ____
        |
        |
        |
    """
  end

  def six
    """
    ____
    |   |
        |
        |
    """
  end

  def seven
    """
    ____
    o   |
        |
        |
    """
  end

  def eight
    """
    ____
    o   |
    |   |
        |
    """
  end

  def nine
    """
    ____
    o   |
    |   |
   //   |
    """
  end

  def ten
    """
    ____
    o   |
   -|-  |
   //   |
    """
  end
end
