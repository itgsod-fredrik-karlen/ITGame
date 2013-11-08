require 'rspec'
require_relative '../lib/warrior'

describe 'Warrior' do

  it 'should have a name' do
    w = Warrior.new('Baldriq', 0)
    w.name.should == "Baldriq"

    w = Warrior.new('Inigo', 0)
    w.name.should == "Inigo"
  end

  it 'should not have a weapon' do
    w = Warrior.new("", 0)
    expect { w.weapon }.to raise_error NotImplementedError
  end

  it 'should not have hp' do
    w = Warrior.new('', 0)
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

describe 'attacking' do

  it 'should be able to attack something' do
    sw = SwordWarrior.new('')
    sw.should respond_to(:attack).with(1).arguments
  end

end

describe "Taking hits" do

  it 'should be able to take hits'do
    sw = SwordWarrior.new('')
    sw.should respond_to(:take_hit)
  end

  it 'should be able to take a hit from an attacker' do
    attacker = SwordWarrior.new('')
    defender = SwordWarrior.new('')

    defender.should_receive(:take_hit)
    attacker.attack(defender)
  end

end