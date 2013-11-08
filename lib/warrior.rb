class Warrior

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def hp
    raise NotImplementedError
  end

  def weapon
    raise NotImplementedError
  end

end



class SpearWarrior < Warrior

  def initialize(name)
    super(name)
  end

  def weapon
    'Spear'
  end

  def hp
    10
  end

end

class SwordWarrior < Warrior

  def initialize(name)
    super(name)
  end

  def weapon
    'Sword'
  end

  def hp
    15
  end

end