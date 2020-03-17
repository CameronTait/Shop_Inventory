require_relative( '../db/sql_runner' )

class Product

  attr_reader( :id, :name, :total_stock, :stock_price, :customer_id )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @total_stock = options['total_stock'].to_i
    @leased_stock = options['leased_stock'].to_i
    @stock_price = options['stock_price'].to_i
    @customer_id = options['customer_id']
  end

  def save()
    sql = "INSERT INTO
           products
           (name, total_stock, leased_stock,
            stock_price, customer_id)
           VALUES
           ($1, $2, $3, $4, $5)
           RETURNING id"
    values = [@name, @total_stock, @leased_stock,
              @stock_price, @customer_id]
    @id = SqlRunner.run( sql, values)[0]["id"].to_i()
  end

  def customer()
    sql = "SELECT * FROM customers
    WHERE id = $1"
    values = [@customer_id]
    customer = SqlRunner.run(sql, values)
    result = Customer.new( customer.first )
    return result
  end
  #
  # def update()
  #   sql = "UPDATE products SET name = $1, total_stock = $2, stock_price = $3 WHERE id = $4"
  #   values = [@name, @total_stock, @stock_price, @id]
  #   SqlRunner.run(sql, values)
  # end
  #
  # def delete()
  #   sql = "DELETE FROM products where id = $1"
  #   values = [@id]
  #   SqlRunner.run(sql, values)
  # end
  #
  def self.all()
    sql = "SELECT * FROM products"
    products = SqlRunner.run( sql )
    result = products.map { |product_hash| Product.new( product_hash )}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM products"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM products WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    product = self.new(result.first)
    return product
  end
end
