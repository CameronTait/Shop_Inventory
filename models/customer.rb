require_relative( '../db/sql_runner' )

class Customer

  attr_reader( :id, :name )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end


  def save()
    sql = "INSERT INTO customers
    (name)
    VALUES ($1) RETURNING *"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i()
  end

  # def products()
  #   sql = "SELECT * FROM products"
  #   WHERE customer_id = $1"
  #   values = [@id]
  #   products = SqlRunner.run( sql, values)
  #   result = products.map { |product_hash| Product.new ( product_hash) }
  #   return result
  # end
  #
  # def update()
  #   sql = "UPDATE customers SET name = $1 WHERE id = $2"
  #   values = [@name, @id]
  #   SqlRunner.run( sql, values)
  # end
  #
  # def delete()
  #   sql = "DELETE FROM customers WHERE id = $1"
  #   values = [@id]
  #   SqlRunner.run(sql, values)
  # end
  #
  def self.all()
    sql = "SELECT * FROM customers"
    customers = SqlRunner.run( sql )
    result = customers.map { |customer_hash| Customer.new( customer_hash ) }
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM customers WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    customer = self.new(result.first)
  end


end
