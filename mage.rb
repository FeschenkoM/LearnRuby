class Mage

	attr_accessor :name, :spell

	def enchant(target)
		puts "#{@name} casts #{@spell} on #{target.name}"
	end

end

targ = Mage.new
morg = Mage.new
morg.name = "Morgana"
targ.name = "max"
targ.spell = "Fireball"
targ.enchant(morg)
