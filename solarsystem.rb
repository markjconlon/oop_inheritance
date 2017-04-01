#going to just put all the classes in one file , sorry for poor form :)
class System
  attr_reader :bodies

  def initialize
    @bodies = []
  end

  def add(body)
    @bodies << body
  end

  def total_mass
    sum = 0
    @bodies.each do |body|
      sum += body.mass
    end
    sum
  end
end

class Body < System

  attr_reader :name, :mass
  def initialize(name, mass)
    @name = name.to_s
    @mass = mass.to_f
  end


end

class Planet < Body

  attr_accessor :moons
  #displayed in earth days
  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
    @moons = []
  end
end

class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

end

class Moon < Body

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

end

solar_system = System.new
earth = Planet.new("Earth", 100, 24, 365.25)
mercury = Planet.new("Mercury", 75, 1408, 87.96)
venus = Planet.new("Venus", 81, 5832, 224.7)
mars = Planet.new("Mars", 10.7, 25, 686.971)
solar_system.add(earth)
solar_system.add(mercury)
solar_system.add(venus)
solar_system.add(mars)
moon = Moon.new("TheMoon", 0.012, 27.3, earth)
solar_system.add(moon)
sun = Star.new("Sun", 10100, "g")
solar_system.add(sun)
