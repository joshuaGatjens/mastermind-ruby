require 'colorize'
require "./Jugador"

class Master_Mind 

    def initialize 
        @colors = ["red", "yellow", "blue","green"]
        @combinacion = combinacion_colores
        @contador = 1
        @colores_usuario = Jugador.new
    end 

    def iniciar_juego
        # Bienvenida al juego
        puts "Bienvenido al juego, por favor ingresa tu nombre:"
        jugador = gets.chomp
        puts "Hola #{jugador}, ¡preparate para jugar!
        "
        # # Explicacion sobre como jugar:
        puts "El juego se juego se juega la siguiente manera:
        La computadora creará un código de 4 colores, tú tendrás 12 oportunidades para adivinarlo.

        Estos son los colores que se podrán utilizar. ¡Mucha suerte!"

        @colors.each do |color|
        print color.colorize(color.to_sym) + " "
        end
        puts " "
        puts "¿te gustaría jugador como adivinador (1) o te gustaría crear el código (2)?"
        respuesta = gets.chomp 
        
        if respuesta == "1"
            turno_jugador
        elsif respuesta == "2"
            # metodo para el código
        end
        end

        def combinacion_colores
            colores = []
            colores = @colors.sample(4)
        end
    end

    def turno_jugador
        # método para el turno del jugador
        array_random=@combinacion
        3.times do

        color_respuesta =Jugador.new
        arraycreado= color_respuesta.turno_jugador

        validar_posi=comprobar_codigo(array_random, arraycreado)

        if arraycreado == array_random
            p "Has ganado"
            abort("ME ESTOY CERRANDO")
        end
        @contador+=1

        break if @contador == 3
        end
    end

    def turno_computadora
        #código para computadora
    end

    def comprobar_codigo(array_random, arraycreado)
        p "SOY EL RAMDON \n"
        p array_random
        puts "\n\n"

        p "SOY EL CREADO\n"
        p arraycreado
        puts "\n\n"

        codigo_secreto = @combinacion_colores
        lista_feedback = []

        arraycreado.each_with_index do |color, index|
        if codigo_secreto[index] == arraycreado[index]
            lista_feedback << "O".green

        elsif
            codigo_secreto.include?(color)
            lista_feedback << "O".white
        elsif
            !codigo_secreto.include?(color)
            lista_feedback << "X".red
        end
        end
    end


mastermind = Master_Mind.new
mastermind.iniciar_juego
