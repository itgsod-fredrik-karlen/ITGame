require 'rspec'
require_relative '../lib/warrior'

describe 'Warrior' do

  it 'should have a name' do
    w = Warrior.new('Baldriq')
    w.name.should == "Baldriq"

    w = Warrior.new('Inigo')
    w.name.should == "Inigo"
  end

  it 'should not have a weapon' do
    w = Warrior.new("")
    expect { w.weapon }.to raise_error NotImplementedError
  end

  it 'should not have hp' do
    w = Warrior.new('')
    expect { w.hp }.to raise_error NotImplementedError
  end

end

describe "SpearWarrior" do

  it 'should have a name and spear' do
    sw = SpearWarrior.new('Inigo')
    sw.name.should == 'Inigo'
    sw.weapon.should == 'Spear'
  end

  it 'should have 10 hp' do
    sw = SpearWarrior.new('')
    sw.hp.should == 10
  end

end

describe "SwordWarrior" do
  it 'should have a name and a Sword' do
    sw = SwordWarrior.new('Inigo')
    sw.name.should == 'Inigo'
    sw.weapon.should == 'Sword'
  end

  it 'should have 15 hp' do
    sw = SwordWarrior.new('')
    sw.hp.should == 15
  end
end