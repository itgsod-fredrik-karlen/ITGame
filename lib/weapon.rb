class Weapon

  attr_reader :name, :dmg_range

  def initialize(name, min_dmg, max_dmg)
    raise ArgumentError if max_dmg < min_dmg
    @name = name
    @dmg_range = (min_dmg..max_dmg)
  end

  def min_dmg
    @dmg_range.first
  end

  def max_dmg
    @dmg_range.last
  end

end