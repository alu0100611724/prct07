require "rspec"
require "../lib/racional.rb"

describe Racional do

  before :each do
    @racional = Racional.new(1,2)
  end

  it "Debe existir un numerador" do
    @racional.num_.should == 1
  end

  it "Debe existir un denominador" do
    @racional.den_.should == 2
  end

end
