class Warrior

  attr_reader :name

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  def hp
    raise NotImplementedError
  end

  def weapon
    raise NotImplementedError
  end

  def attack(target)
    target.take_hit
  end

  def take_hit
    #fghjkl
  end

end



class SpearWarrior < Warrior

  attr_reader :hp

  def initialize(name)
    super(name, 10)
  end

  def weapon
    'Spear'
  end

end

class SwordWarrior < Warrior

  attr_reader :hp

  def initialize(name)
    super(name, 15)
  end

  def weapon
    'Sword'
  end

end