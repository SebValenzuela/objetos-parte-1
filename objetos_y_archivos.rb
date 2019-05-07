class Product
  attr_reader :name , :tallas
  def initialize(name, *tallas)
    @name = name
    @tallas = tallas.map(&:to_i)
  end

def average
    @tallas.inject(&:+)/@tallas.size.to_f #suma todos los productos y el talla.size los divide por todos los productos
  end
end
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end
puts products_list

products_list.each do |producto| #promedio por producto
  puts producto.name
  puts producto.average
end
