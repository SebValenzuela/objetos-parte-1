class Dog
  def initialize(nombre, raza, color)
  @nombre = nombre
  @raza = raza
  @color = color
end

  def ladrar
 "#{@nombre} está ladrando es de raza #{@raza} y de color #{@color}"
 end
end

dog = Dog.new('Beethoven', 'San Bernardo', 'Café')
puts dog.ladrar

dog = Dog.new('Balto', 'Golden-Retriever', 'Dorado')
puts dog.ladrar
