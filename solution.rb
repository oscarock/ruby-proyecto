puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
puts "Para empezar a jugar digita 1"
puts "Para salir digita 0"

STDOUT.flush  
text = gets.chomp.to_i
if text == 1
	if File.file?('definiciones.txt')
		f = File.open('definiciones.txt').each_line do |line|
        	p line
    	end	
	end
else
	puts "Es una lastima :("
end