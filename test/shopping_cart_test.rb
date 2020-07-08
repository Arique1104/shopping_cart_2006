require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require './lib/product'
require "./lib/shopping_cart"

class ShoppingTest < Minitest::Test

  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_instance_of Shopping, cart
  end

  #def test_it_has_attributes
  #end

end
