puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
puts "Para empezar a jugar digita 1"
puts "Para salir digita 0"

STDOUT.flush  
text = gets.chomp.to_i
if text == 1
	system 'cls'
	preguntas = File.readlines('definiciones.txt')

	preguntas.each_slice(3) do |pregunta,respuesta|
		loop do
	    puts pregunta
	    given_answer = gets.chomp

	    if given_answer != respuesta.strip
	    	puts "Incorrecto!!!, Trata de nuevo."
	    else
	    	puts "Correcto!!!."	
	    end
	    # given_answer != respuesta.strip ? "Incorrecto!!!, Trata de nuevo." : "Correcto!!!, Continua."
	    break if given_answer == respuesta.strip
	  end
	end
else
	system 'cls'
	puts "Es una lastima :("
end


