require_relative 'view'
require_relative 'repository'
require_relative 'controller'
require_relative 'router'

def get_input
  print "> "
  gets.chomp
end

repo = TasksRepository.new # DATA
view = View.new # DISPLAY

controller = Controller.new(view, repo)

Router.new(controller).start
