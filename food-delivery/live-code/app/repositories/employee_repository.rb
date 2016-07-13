require './app/models/employee'
require 'csv'

class EmployeeRepository
  def initialize
    @employees = []
    @csv_file = 'data/employees.csv'
    load
  end

  def find_for_login(credentials)
    @employees.each do |e|
      if e.username == credentials[:username] && e.password == credentials[:password]
        return e
      end
    end
    nil
  end

  def add(employee)
    employee.id = @employees.size.zero? ? 1 : @employees[-1].id.next
    @employees << employee
    save
  end

  def all(options = {})
    if options[:position]
      return @employees.select { |e| e.position == options[:position] }
    end
    @employees
  end

  def find(employee_id)
    @employees.find { |employee| employee.id == employee_id }
  end

  def save
    CSV.open(@csv_file, "w") do |csv|
      csv << [ "id", "username", "password", "position" ]
      @employees.each do |employee|
        csv << [ employee.id, employee.username, employee.password, employee.position.to_s ]
      end
    end
  end

  def load
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      employee = Employee.new(row)
      @employees << employee
    end
  end
end
