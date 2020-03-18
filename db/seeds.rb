require_relative( "../models/product.rb" )
require_relative( "../models/customer.rb" )
require("pry-byebug")

Product.delete_all()
Customer.delete_all()


customer5 = Customer.new({
  "name" => "No Customer"
  })

  customer5.save()

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
  "name" => "Secret Product D",
  "total_stock" => 5,
  "leased_stock" => 0,
  "stock_price" => 100,
  "customer_id" => customer1.id
})

product1.save()

product1 = Product.new({
  "name" => "Secret Product R",
  "total_stock" => 8,
  "leased_stock" => 0,
  "stock_price" => 120,
  "customer_id" => customer2.id
})

product1.save()

product1 = Product.new({
  "name" => "SECRET F",
  "total_stock" => 4,
  "leased_stock" => 0,
  "stock_price" => 350,
  "customer_id" => customer3.id
})

product1.save()

binding.pry
nil
