
## Setup

* Fork this Repository
* Clone YOUR fork
* Compete the activity below
* Push your solution to your fork
* Submit a pull request from your repository to the turingschool-examples repository
  * Make sure to put your name in your PR!

# Activity

## Iteration 1

Start by making the existing tests pass (removing the skips as you go), and then use TDD to update the `Product` class that responds to the following interaction pattern:

```ruby
require './lib/product'
#=> true

product = Product.new(:paper, 'toilet paper', 3.70, '10')

 @category=:paper, @name="toilet paper", @quantity='10', @unit_price=3.70>

product.category
#=> :paper

product.name
#=> "toilet paper"

product.unit_price
#=> 3.70

product.quantity
#=> 10

product.total_price
#=> 37.0

product.is_hoarded?
#=> false

product.hoard

product.is_hoarded?
#=> true
```

## Iteration 2

Use TDD to create a `ShoppingCart` class that responds to the following interaction pattern:

```ruby
require './lib/product'
#=> true

require './lib/shopping_cart'
#=> true

cart = ShoppingCart.new("King Soopers", "30items")
#=> #<ShoppingCart:0x00007fccd30375f8...>

cart.name
#=> 'King Soopers'

cart.capacity
#=> 30

cart.products
#=> []

product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
#=> #<Product:0x00007fccd29b5720...>

product2 = Product.new(:meat, 'chicken', 4.50, '2')   
#=> #<Product:0x00007fccd2985f48...>

cart.add_product(product1)

cart.add_product(product2)  

cart.products
#=> [#<Product:0x00007fccd29b5720...>, #<Product:0x00007fccd2985f48...>]

cart.details
#=> {name: "King Soopers", capacity: 30}
```

## Iteration 3

Use TDD to update your `ShoppingCart` class so that it responds to the following interaction pattern. A shopping cart is full if its total number of products exceeds its capacity.

```ruby
require './lib/product'
#=> true

require './lib/shopping_cart'
#=> true

cart = ShoppingCart.new("King Soopers", "30items")

#=> #<ShoppingCart:0x00007fccd30375f8...>

product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
#=> #<Product:0x00007fccd29b5720...>

product2 = Product.new(:meat, 'chicken', 4.50, '2')   
#=> #<Product:0x00007fccd2985f48...>

product3 = Product.new(:paper, 'tissue paper', 1.25, '1')

#=> #<Product:0x00007fccd2985f51...>

cart.add_product(product1)

cart.add_product(product2)

cart.add_product(product3)

cart.total_number_of_products
#=> 13

cart.is_full?
#=> false

product4 = Product.new(:produce, 'apples', 0.99, '20')

#=> #<Product:0x00007fccd2985f53...>

cart.add_product(product4)

cart.is_full?
#=> true

cart.products_by_category(:paper)
#=> [#<Product:0x00007fccd29b5720...>, #<Product:0x00007fccd2985f51...>]
```

## Iteration 4

Use TDD to update your `ShoppingCart` class so that it responds to the following interaction pattern. The calculation for a cart's percentage occupied begins by dividing how much it currently has in it by the amount that it can hold.

```ruby
require './lib/product'
#=> true

require './lib/shopping_cart'
#=> true

cart = ShoppingCart.new("King Soopers", "30items")



product1 = Product.new(:paper, 'toilet paper', 3.70, '10')


product2 = Product.new(:meat, 'chicken', 4.50, '2')   


product3 = Product.new(:paper, 'tissue paper', 1.25, '1')



cart.add_product(product1)

cart.add_product(product2)

cart.add_product(product3)

cart.percentage_occupied
#=> 43.33

product4 = Product.new(:produce, 'apples', 0.99, '20')



cart.add_product(product4)

cart.sorted_products_by_quantity
#=> [#<Product:0x00007fccd2985f53...>, #<Product:0x00007fccd29b5720...>, #<Product:0x00007fccd2985f48...>, #<Product:0x00007fccd2985f51...>]

cart.product_breakdown
#=> {:meat=>[#<Product:0x00007fccd2985f48...>], :paper=> [#<Product:0x00007fccd29b5720...>, #<Product:0x00007fccd2985f51...>], :produce=> [#<Product:0x00007fccd2985f53...>]}
```
