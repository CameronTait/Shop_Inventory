require_relative( "../models/product.rb" )
require_relative( "../models/customer.rb" )
require_relative( "../models/subscription.rb" )
require("pry-byebug")

Subscription.delete_all()
Product.delete_all()
Customer.delete_all()

Product1 = Product.new({
  "name" => "Product D",
  "total_stock" => 5,
  "leased_stock" => 23232323,
  "current_stock" => 42424242,
  "stock_level" => "stock level is ",
  "stock_price" => 100,
  "current_subscribers" => "names of current subscribers"
})

product1.save()

Product2 = Product.new({
  "name" => "Product R",
  "total_stock" => 5,
  "leased_stock" => 23232323,
  "current_stock" => 42424242,
  "stock_level" => "stock level is...",
  "stock_price" => 90,
  "current_subscribers" => "names of current subscribers"
})

product2.save()

Product3 = Product.new({
  "name" => "Product F",
  "total_stock" => 5,
  "leased_stock" => 23232323,
  "current_stock" => 42424242,
  "stock_level" => "stock level is...",
  "stock_price" => 300,
  "current_subscribers" => "names of current subscribers"
})

product3.save()

Product4 = Product.new({
  "name" => "Product C",
  "total_stock" => 30,
  "leased_stock" => 23232323,
  "current_stock" => 42424242,
  "stock_level" => "stock level is...",
  "stock_price" => 15,
  "current_subscribers" => "names of current subscribers"
})

product4.save()

customer1 = Customer.new({
  "name" => "Nathan",
  "product_purchased" => "Product R"
  "purchase_date" => "13th March 2020"
})

customer1.save()

customer2 = Customer.new({
  "name" => "Josh",
  "product_purchased" => "Product D"
  "purchase_date" => "11th March 2020"
})

customer2.save()

customer3 = Customer.new({
  "name" => "Beth",
  "product_purchased" => "Product C"
  "purchase_date" => "14th March 2020"
})

customer3.save()

customer4 = Customer.new({
  "name" => "Bob",
  "product_purchased" => "Product F"
  "purchase_date" => "25th February 2020"
})

customer4.save()


binding.pry
nil
