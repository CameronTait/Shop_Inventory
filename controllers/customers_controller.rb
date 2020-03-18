require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/customer.rb' )
also_reload( '../models/*' )

get '/customers' do
  @customers = Customer.all()
  erb (:"customers/index")
end

get '/customers/new' do
  erb( :"customers/new" )
end

get '/customers/:id' do
  @customer = Customer.find(params[:id])
  @products = @customer.products
  erb (:"customers/show")
end


post '/customers' do
  @Customer = Customer.new( params )
  @Customer.save()
  redirect to "/customers"
end
