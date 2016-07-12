require './app/models/customer'
require 'csv'

class CustomerRepository
  def initialize
    @customers = []
    @csv_file = 'data/customers.csv'
    load
  end

  def add(customer)
    customer.id = @customers.size.zero? ? 1 : @customers[-1].id.next
    @customers << customer
    save
  end

  def all
    @customers
  end

  def find(customer_id)
    @customers.find { |customer| customer.id == customer_id }
  end

  def save
    CSV.open(@csv_file, "w") do |csv|
      csv << [ "id", "name", "address" ]
      @customers.each do |customer|
        csv << [ customer.id, customer.name, customer.address ]
      end
    end
  end

  def load
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      customer = Customer.new(row)
      @customers << customer
    end
  end
end
