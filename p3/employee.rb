class Employee
	attr_reader :name, :salary

	def name=(name)
		if name == ""
			raise "Name can't be blank"
		end
			@name = name
	end

	def salary=(salary)
		if salary < 0
			raise "A #{salary} is not valid"
		end
		@salary =  salary
	end

	def print_pay_stub
		puts "Name: #{@name}"
		pay_for_period = (@salary / 365.0) * 14
		formatted_pay = format("%.2f", pay_for_period)
		puts "Pay this period: $ #{formatted_pay}"
	end

	def initialize(name = "Anonymous", salary = 0.0)
		self.name = name
		self.salary = salary
	end


end


amy = Employee.new("ammy blake", 50000)
#amy.name = "Amy"
#amy.salary = 5000

amy.print_pay_stub