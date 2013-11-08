require 'rspec'
require_relative '../lib/warrior'

describe 'Warrior' do

  it 'should have a name and weapon' do
    w = Warrior.new('Baldriq', 'Sword')
    w.weapon.should == "Sword"
    w.name.should == "Baldriq"

    w = Warrior.new('Inigo', 'Hammer')
    w.weapon.should == "Hammer"
    w.name.should == "Inigo"
  end
end