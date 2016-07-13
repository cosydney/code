class Router
  def initialize(attributes)
    @controllers = attributes
    @running    = true
  end

  def run
    puts "Welcome to the Food Delivery!"
    puts "           --           "

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @controllers[:meals].create
    when 2 then @controllers[:meals].list
    when 3 then @controllers[:customers].create
    when 4 then @controllers[:customers].list
    when 5 then @controllers[:orders].list
    when 6 then @controllers[:orders].create
    else
      puts "Please press 1, 2, 3, 4, 5 OR 6"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - Add a meal"
    puts "2 - List all meals"
    puts "3 - Add a customer"
    puts "4 - List all customers"
    puts "5 - View all undelivered orders"
    puts "6 - Make an order"
  end
end
