#####################################################################
#   
#   FizzBuzz
#  
#####################################################################

class FizzBuzz
  def initialize(_numero)
    # Inicializa la clase
    @numero = _numero
  end
  
  def generar
  	for posicion in 1..@numero
  		_retorno = ''
  		if (posicion % 3) == 0
				_retorno = 'Fizz'
  		end
  		if (posicion % 5) == 0
				_retorno += 'Buzz'
  		end
  		if _retorno.empty?
				_retorno = posicion
  		end
  		puts _retorno 		
  	end
  end
end

obj = FizzBuzz.new(30)
obj.generar()
