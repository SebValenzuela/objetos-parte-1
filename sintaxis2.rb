class Car
  def initialize(model, year)
  @model = model
  @year = year
 end

  def auto_favorito
"Mi auto favorito es un #{@model} del año #{@year}!"
 end
end

car = Car.new('Camaro', 2016)
puts car.auto_favorito
