class Dog
attr_reader :name, :age

	def name=(value)
		if value == ""
			raise "name can't be blank"
		else
			@name = value
		end

	end

	def age=(value)
		if value < 0 
			raise "current age isn't valid"
		else
			@age = value
		end
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