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
    @racional.denom.should == 2
  end

	it "Debe de estar en su forma reducida" do
    @racional.num.should == 1 and @racional.denom.should == 2
  end

	it "Se debe invocar al metodo num() para obtener el numerador" do
    @racional.respond_to?("num").should == true
  	@racional.num.should == 1
	end

	it "Se debe invocar al metodo denom() para obtener el denominador" do
    @racional.respond_to?("denom").should == true
		@racional.denom.should == 2

  end

end
