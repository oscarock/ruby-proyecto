require_relative "Model.rb"
require_relative "View.rb"

class Controller

	def initialize
		@model = Model.new	
	end

	def run
		messages_welcome = View.message_welcome
		text = gets.chomp.to_i
	end
end

project =  Controller.new
project.run