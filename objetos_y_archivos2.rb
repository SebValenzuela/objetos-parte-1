class Product
  attr_reader :name, :large, :medium, :small, :xsmall
  def initialize(name, *tallas)
    @name = name
    @tallas = tallas.map(&:to_i)
  end

  def eliminar_talla
    return @tallas[0..@tallas.size-2]
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
    product = Product.new(*ls)
      products_list << "#{product.name}, #{product.eliminar_talla.join(', ')}"
    end
    print products_list

salida = File.write('nuevo_catalogo.txt', products_list.join("\n")) 
