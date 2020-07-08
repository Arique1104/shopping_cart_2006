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

  def total_number_of_products
    @products.sum do |product|
      product.quantity
    end
  end

  def is_full?
    total_number_of_products > @capacity
  end

  def products_by_category(symbol)
    @products.find_all do |product|
      product.category == symbol
    end
  end

  def percentage_occupied
    total = total_number_of_products / @capacity.to_f * 100
    total.round(2)
  end

  def sorted_products_by_quantity
    @products.sort do |a, b|
      b.quantity <=> a.quantity
    end
  end

  def product_breakdown
    @products.group_by do |product|
      product.category
    end
  end

end
