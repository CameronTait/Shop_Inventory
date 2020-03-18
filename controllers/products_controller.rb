require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/product.rb' )
also_reload( '../models/*' )

get '/products' do
  @products = Product.all()
  erb (:"products/index")
end


get '/products/new' do
  @customers = Customer.all
  erb( :"products/new" )
end

get '/products/:id' do
  @product = Product.find(params[:id])
  @customer = @product.customer
  erb (:"products/show")
end

post '/products' do
  @product = Product.new( params )
  @product.save()
  redirect "/products"
end

get '/products/:id/edit' do # edit
  @product = Product.find( params[:id] )
  @customers = Customer.all
  erb( :"products/edit" )
end

post '/products/:id' do # update
  Product.new( params ).update
  redirect to '/products'
end
