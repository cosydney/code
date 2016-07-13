require "./app/views/base_view"
class CustomerView < BaseView
  def list(customers)
    customers.each { |customer| puts "#{customer.id} - #{customer.name} -#{customer.address}" }
  end

  def ask_manager_for_customer
    puts "What is the name of the customer?"
    name = ask_input
    puts "Where does he lives?"
    address = ask_input

    {name: name, address: address}
  end

  def ask_manager_for_customer_id
    puts "What is the ID of the customer?"
    ask_input.to_i
  end
end
