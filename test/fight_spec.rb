require 'rspec'
require_relative '../lib/fight'
require_relative '../lib/warrior'

describe 'Starting a new fight' do

  it 'should have 2 participants' do
    f = Fight.new('','')
    f.participants.count.should == 2
  end

  it 'should have Warriors ass participants' do
    f = Fight.new(SpearWarrior.new(''), SwordWarrior.new(''))
    f.participants.first.is_a?(Warrior) == true
    f.participants.last.is_a?(Warrior) == true
  end

end

describe 'turns' do

  #it 'should let the warriors pummel each other' do
  #  f = Figt.new(SpearWarrior(''), SwordWarrior(''))
  #
  #end

end