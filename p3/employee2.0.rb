class Employee
	attr_reader :name

	def name=(name)
		if name == ""
			raise "Name can't be blank"
		end
		@name =  name
	end

	def print_name
		puts "Name: #{@name}"	
	end

	def initialize (name = "Anonymous")
		self.name = name
	end

end

class SalariedEmployee < Employee
	attr_reader :salary
	def salary=(salary)
	 	if salary < 0
	 		raise "Invalid salary"
	 	end
	 	@salary = salary

	end

	def print_pay_stub
		print_name
		pay_for_period = (@salary / 365.0) * 14
		formatted_pay = format("$%.2f", pay_for_period)
		puts "Pay This Period: #{formatted_pay}"
	end

	def initialize(name = "Anonymous", salary = 0.0)
		super(name)
		self.salary = salary
	end


end

class HourlyEmployee < Employee
	attr_reader :hourly_wage, :hours_per_week

	def hourly_wage=(hourly_wage)
		if hourly_wage < 0
			raise "invalid wage"
		end
		@hourly_wage = hourly_wage
	end

	def hours_per_week=(hours_per_week)
		if hours_per_week < 0 
			raise "invalid hours per week"
		end
		@hours_per_week = hours_per_week
	end

	def print_pay_stub
		print_name
		pay_for_period = @hourly_wage * @hours_per_week * 2
		formatted_pay = format("$%.2f", pay_for_period)
		puts "Pay This Period: #{formatted_pay}"		
	end

	def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
		super(name)
		self.hourly_wage = hourly_wage
		self.hours_per_week = hours_per_week
	end
end


#salaried_employee = SalariedEmployee.new
#salaried_employee.name = "lucy"
#salaried_employee.salary = 50000
#salaried_employee.print_pay_stub

#hourlyemployee = HourlyEmployee.new
#hourlyemployee.name = "John Smith"
#hourlyemployee.hourly_wage = 14.97
#hourlyemployee.hours_per_week = 30
#hourlyemployee.print_pay_stub

#salaried_employee = SalariedEmployee.new("Jane Doe", 50000)
#salaried_employee.print_pay_stub

#hourlyemployee = HourlyEmployee.new("John Smith", 14.97, 30)
#hourlyemployee.print_pay_stub

#salaried_employee = SalariedEmployee.new("missy")
#salaried_employee.print_pay_stub
ivan    = HourlyEmployee.new("Ivan Stokes",     12.75, 25) 
harold  = HourlyEmployee.new("Harold Nguyen",   12.75, 25) 
tamara  = HourlyEmployee.new("Tamara Wells",    12.75, 25) 
susie   = HourlyEmployee.new("Susie Powell",    12.75, 25) 
 
edwin   = HourlyEmployee.new("Edwin Burgess",   10.50, 20) 
ethel   = HourlyEmployee.new("Ethel Harris",    10.50, 20) 
 
angela  = HourlyEmployee.new("Angela Matthews", 19.25, 30) 
stewart = HourlyEmployee.new("Stewart Sanchez", 19.25, 30)

ivan.print_pay_stub
harold.print_pay_stub
tamara.print_pay_stub
susie.print_pay_stub
edwin.print_pay_stub
ethel.print_pay_stub
angela.print_pay_stub
stewart.print_pay_stub
