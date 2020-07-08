class ShoppingCart
 attr_reader  :name,
              :capacity,
              :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    detail_hash = Hash.new
    detail_hash[:name] = @name
    detail_hash[:capacity] = @capacity
    detail_hash
  end

end
