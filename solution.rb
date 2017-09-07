puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
puts "Para empezar a jugar digita 1"
puts "Para salir digita 0"

text = gets.chomp.to_i

if text == 1
	system 'cls'
	questions = File.readlines('definiciones.txt')

	questions.each_slice(3) do |question,answer|
		loop do
	    puts question
	    entry_answer = gets.chomp

	    if entry_answer != answer.strip
	    	puts "Incorrecto!!!, Trata de nuevo."
	    else
	    	puts "Correcto!!!."	
	    end
	    break if entry_answer == answer.strip
	  end
	end
else
	system 'cls'
	puts "Es una lastima :("
end


