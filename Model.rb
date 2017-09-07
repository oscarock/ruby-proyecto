class Model
	def initialize(file)
		@file = File.readlines(file)	
	end

	def parse_file(message_correct_question, message_incorrect_question, end_message)
		@file.each_slice(3) do |question,answer|
			loop do
		    puts question
		    entry_answer = gets.chomp

		    if entry_answer != answer.strip
		    	puts message_incorrect_question
		    else
		    	puts message_correct_question
		    end
		    break if entry_answer == answer.strip
	  	end
		end
	  	puts end_message
	end
end