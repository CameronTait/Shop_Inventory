require_relative( "../models/product.rb" )
require_relative( "../models/customer.rb" )
require("pry-byebug")

Product.delete_all()
Customer.delete_all()

customer1 = Customer.new({
  "name" => "Nathan"
})

customer1.save()

customer2 = Customer.new({
  "name" => "Josh"
})

customer2.save()

customer3 = Customer.new({
  "name" => "Beth"
})

customer3.save()

customer4 = Customer.new({
  "name" => "Bob"
})

customer4.save()


product1 = Product.new({
  "name" => "SECRET D",
  "total_stock" => 5,
  "leased_stock" => 0,
  "stock_price" => 10000,
  "customer_id" => customer1.id
})

product1.save()

product1 = Product.new({
  "name" => "SECRET B",
  "total_stock" => 10,
  "leased_stock" => 0,
  "stock_price" => 50000,
  "customer_id" => customer2.id
})

product1.save()

product1 = Product.new({
  "name" => "SECRET I",
  "total_stock" => 3,
  "leased_stock" => 0,
  "stock_price" => 20000,
  "customer_id" => customer3.id
})

product1.save()

binding.pry
nil
