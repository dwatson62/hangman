class Man
  LEVELS = { '1': :one, '2': :two, '3': :three, '4': :four,
    '5': :five, '6': :six, '7': :seven, '8': :eight,
    '9': :nine, '10': :ten
   }

  attr_reader :level

  def initialize
    @level = 1
  end

  def update
    @level += 1
  end

  def display
    puts send(LEVELS.fetch(:"#{level.to_s}"))
  end

  def dead?
    level == 10
  end

  private

  def one
    '|'
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
