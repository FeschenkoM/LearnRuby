class Animal

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

class Dog < Animal
	def to_s
		"#{@name} the dog, age #{@age}"
	end

end

class Bird < Animal
	def talk
		puts "#{@name} says Chirik"
	end

	def move(destination)
		puts "#{@name} fly to the #{destination}"
	end
end

class Cat < Animal
	def talk
		puts "#{@name} says Meow"
	end
end

class Armadillo < Animal
	def move(destination)
		puts "#{@name} unrolls!"
		super
	end
end

lucy = Dog.new
lucy.name = "lucy"
lucy.age = 5

rex =  Dog.new
rex.name = "rex"
rex.age = 7
puts lucy, rex 