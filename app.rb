require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/products_controller')
require_relative('controllers/customers_controller')
require_relative('controllers/subscriptions_controller')

get '/' do
  erb( :index )
end
