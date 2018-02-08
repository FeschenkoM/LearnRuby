class Dog
	def name= (new_value)
		@name = new_value
	end

	def name
		@name
	end

	def age= (new_value)
		@age = new_value
	end

	def age
		@age
	end





	def talk
		puts "#{@name} says Bark!"
	end

	def move(destination)
		puts "#{@name} runs to the #{destination}."
	end

	def report_age
		puts "#{@name} is #{@age} years old."
	end


end

dog = Dog.new
dog.name = "Sandy"
dog.age = 5
dog.talk
dog.move("yard")
dog.report_age
rex = Dog.new
rex.name = "Rex"
rex.age = 10
rex.talk
rex.move("home")
rex.report_age