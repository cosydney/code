require "./app/views/base_view"

class LoginView < BaseView
  def ask_credentials
    puts "Username"
    username = ask_input
    puts "Password"
    password = ask_input

    {username: username, password: password}
  end
end
