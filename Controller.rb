require_relative "Model.rb"
require_relative "View.rb"

class Controller

	def initialize()
		@model = Model.new("definiciones.txt")	
	end

	def run
		messages_welcome = View.message_welcome
		text = gets.chomp.to_i
		if text == 1
			View.clear_console	
			@model.parse_file(View.correct_question, View.incorrect_question, View.end_message)
		else
			View.clear_console
			View.exit_message
		end
	end
end

project =  Controller.new
project.run