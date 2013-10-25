require "rspec"
require "./lib/racional.rb"

describe Racional do

  before :each do
    @racional = Racional.new(4,8)#Equivale a 1/2
  end

  it "Debe existir un numerador" do
    @racional.num.should == 1
  end

  it "Debe existir un denominador" do
    @racional.den.should == 2
  end

	it "Debe de estar en su forma reducida" do
    @racional.num.should == 1 and @racional.den.should == 2
  end

end
