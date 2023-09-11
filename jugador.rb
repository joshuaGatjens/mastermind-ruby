class Jugador

  def initialize
    @array = []
  end
    def turno_jugador
        4.times do
          puts "Ingresa un color"
          respuesta=gets.chomp
          p @array.push(respuesta)
        end
        @array  
    end

end