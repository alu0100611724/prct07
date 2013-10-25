require "./lib/gcd.rb"

class Racional

  attr_writer :num #numerador
	attr_writer :den #denominador

  def initialize(num, den)
    #Comprobacion de datos introducidos
    raise ArgumentError, 'El denominador no puede ser cero' unless den != 0
    raise ArgumentError, 'El denominador no es numerico' unless den.is_a? Numeric
    raise ArgumentError, 'El numerador no es numerico' unless num.is_a? Numeric
		
		mcd = gcd(num, den)
		@num = num/mcd
		@den = den/mcd
              
  end
	
	def num()#Devuelve el numerador @num
		@num
	end
	
	def denom()#Devuelve el denominador @den
		@den
	end

	def to_s()#Devuelve una cadena de la forma "1/2"
		"#@num/#@den"
	end

end

