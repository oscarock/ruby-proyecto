class View
	def self.message_welcome
		puts "Bienvenido, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
		puts "Para empezar a jugar digita 1"
		puts "Para salir digita 0"		
	end

	def self.correct_question
		"Correcto!!!."	
	end

	def self.incorrect_question
		"Incorrecto!!!, Trata de nuevo."
	end

	def self.exit_message
		puts "Es una lastima :("
	end

	def self.end_message
		"Fin, Gracias por participar."
	end

	def self.clear_console
		system 'cls'
	end
end

