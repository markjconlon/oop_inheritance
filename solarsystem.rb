#going to just put all the classes in one file , sorry for poor form :)
class System
  attr_reader :bodies

  def initialize
    @bodies = []
  end

  #going to pass it an array of length 2, index 0 for body and index 1 for mass
  def add(body)
    @bodies << body
  end

  def total_mass
    sum = 0
    @bodies.each do |body|
      sum += @bodies[body][1]
      return sum
    end
  end
end

class Body < System

  attr_reader :name, :mass
  def initialize(name, mass)
    @name = name.to_s
    @mass = mass.to_f
  end


end

class Planet < body

  def
end

class Star

end

class Moon

end
