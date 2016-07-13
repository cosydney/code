# Pseudo Code

# Check if the users exists ?
# as long as its no we denie access +3 times only
# if yes

require './app/views/login_view'

class LoginsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = LoginView.new
  end

  def login
    # Ask for credentials
    credentials = @view.ask_credentials
    # check if matches repository
    # return employee object or nil
    @employee_repository.find_for_login(credentials)

  end


end
