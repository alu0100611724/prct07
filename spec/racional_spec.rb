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

	it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
		@racional.respond_to?("to_s").should == true
    @racional.to_s.should == "1/2"
  end

	it "Se debe mostar por la consola la fraccion en formato flotante" do
		@racional.respond_to?("to_f").should == true
    @racional.to_f.should == 1.to_f/2
  end

	it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
		@racional.respond_to?("abs").should == true
		absoluto = Racional.new(-1,2)
		absoluto.abs
    absoluto.num.should == @racional.num and absoluto.denom.should == @racional.denom
  end
	
	it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
		@racional.respond_to?("reciprocal").should == true
		@racional.reciprocal.num.should == @racional.denom  and @racional.reciprocal.denom.should == @racional.num
  end

	it "Se debe comparar si dos fracciones son iguales con ==" do
		@racional.respond_to?("==").should == true
    @racional.should == Racional.new(10, 20)
  end	

	it "Se debe calcular el opuesto de una fraccion con -" do
    (-@racional).should == Racional.new(-1,2)
  end

   it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
    (@racional + Racional.new(1,2)).should == Racional.new(1,1)
  end

  it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
    (@racional - Racional.new(3,2)).should == Racional.new(-1,1)
  end

  it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
    (@racional * Racional.new(6,5)).should == Racional.new(3,5)
  end

  it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
    (@racional / Racional.new(6,5)).should == Racional.new(5,12)
  end

  it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
    (@racional % Racional.new(6,5)).should == Racional.new(1,1)
  end

 it "Se debe de poder comprobar si una fracion es menor que otra" do
    (@racional < Racional.new(6,5)).should == true
  end

  it "Se debe de poder comprobar si una fracion es mayor que otra" do
    (@racional > Racional.new(6,5)).should == false
  end

  it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
    (@racional <= Racional.new(6,5)).should == true
  end

  it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
    (@racional >= Racional.new(6,5)).should == false
  end

end
