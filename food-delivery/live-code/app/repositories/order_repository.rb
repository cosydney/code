require './app/models/order'

class OrderRepository
  def initialize(meal_repository, customer_repository)
    @orders = []
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @csv_file = './data/orders.csv'

    load
  end

  def add(order)
    order.id = @orders.size.zero? ? 1 : @orders[-1].id.next
    @orders << order
    save
  end

  def all(options = {})
    unless options[:delivered].nil?
      return @orders.select { |order| order.delivered == options[:delivered] }
    end

    @orders
  end

  def save
    CSV.open(@csv_file, "w") do |csv|
      csv << [ "id", 'delivered', "meal_id", "customer_id" ]
      @orders.each do |order|
        csv << [ order.id, order.delivered, order.meal.id, order.customer.id ]
      end
    end
  end

  def load
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      order = Order.new(row)
      @orders << order
      @meal_repository.find(row[:meal_id].to_i).add_order(order)
      @customer_repository.find(row[:customer_id].to_i).add_order(order)
    end
  end
end
