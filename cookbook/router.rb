class Router
  def initialize(controller)
    @controller = controller
  end

  def start
    loop do
      print_menu
      dispatch(get_input.to_i)
    end
  end

  def print_menu
    puts "\nWhat do you want to do?\n"
    puts "0 - Exit"
    puts "1 - Show all tasks"
    puts "2 - Add a task"
    puts "3 - Delete a task"
    puts "4 - Mark task as done"
  end

  def dispatch(action)
    case action
    when 0 then exit
    when 1 then @controller.display_tasks
    when 2 then @controller.add_task
    when 3 then @controller.delete_task
    when 4 then @controller.mark_task
    else
      puts "Wrong choice"
    end
  end
end
