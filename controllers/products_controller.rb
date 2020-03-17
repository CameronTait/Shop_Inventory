require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/product.rb' )
also_reload( '../models/*' )

get '/products' do
  @products = Product.all()
  erb (:"products/index")
end

get '/products/:id' do
  @product = Product.find(params[:id])
  @customer = @product.customer
  erb (:"products/show")
end
