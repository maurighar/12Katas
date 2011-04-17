#####################################################################
#
#   Bowling
#
#   Sistema de puntuacion en los bolos
#
#####################################################################

class Puntuacion
  def initialize(_marcador)
    @marcador =  _marcador
    self.valores()
  end

  def valores
    # Muestro los valores de la clase
    puts "La puntuacion del jugador es #{@marcador}"
  end

end


juego = Puntuacion.new('XXXXXXXXXXXX')

juego2 = Puntuacion.new('9-9-9-9-9-9-9-9-9-9-')

juego3 = Puntuacion.new('5/5/5/5/5/5/5/5/5/5/5')