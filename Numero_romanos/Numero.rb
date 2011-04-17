#####################################################################
#   
#   Conversion de numero romanos
#   
#    Romano   Decimal
#    I        1 
#    V        5 
#    X        10 
#    L        50 
#    C        100 
#    D        500 
#    M        1.000 
#  
#####################################################################

class DecimalARomano
	attr_reader :arabic, :roman
  
	Equivalencias = {   1 => 'I',
                      4 => 'IV',
                      5 => 'V',
                      9 => 'IX',
                     10 => 'X',
                     40 => 'XL',
                     50 => 'L',
                     90 => 'XC',
                    100 => 'C',
                    400 => 'CD',
                    500 => 'D',
                    900 => 'CM',
                   1000 => 'M' }

  def initialize(_numero)
    # Inicializa la clase
    @_numero = _numero
  end

  def Decimal
    puts @_numero
    puts "Longitud #{@_numero.length}"
  end

  def Convertir
  	# inicializo los valores
    numero_romano = ''
    posicion = @_numero.length - 1
    
    # recorro la cadena de numero para la conversion
    @_numero.scan(/./) do |letra|
      numero_romano += Calcula_valor(letra.to_i  * 10 ** posicion) 
      posicion -= 1
    end
    
    return numero_romano
  end
  
  def Calcula_valor(valor_a_buscar = 0)
    # devuelve el valor mas cercano
    _valore_retorno = ''
		
		while valor_a_buscar > 0
			_arabic = Equivalencias.keys.select{|arabic| (valor_a_buscar) >= arabic}.max
			_valore_retorno += Equivalencias[_arabic]
			valor_a_buscar -= _arabic
    end
	
    return _valore_retorno
  end
end

a = DecimalARomano.new("2364") #MMCCCLXIV
a.Decimal
puts a.Convertir()