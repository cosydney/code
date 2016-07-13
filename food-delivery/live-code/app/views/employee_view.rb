require "./app/views/base_view"
class EmployeeView < BaseView
  def list(employees)
    employees.each { |employee| puts "#{employee.id} - #{employee.username}" }
  end

  def ask_manager_for_employee_id
    puts "What is the ID of the delivery guy?"
    ask_input.to_i
  end
end
