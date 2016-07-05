# Build a list of items (name, checked)
{
  name: "…",
  checked: true/false
}
# List products with checked/unchecked status
# Add products
# Delete products

def add
  # TODO
end

def list
  # TODO
end

# interface.rb
loop do
  answer = gets.chomp
  break if answer == "exit"

  case answer
  when 'list'
    list()
  when 'add'
    add()

  end
end
