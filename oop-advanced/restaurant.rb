class Restaurant
  attr_accessor :location

  def initialize(name, location, type)
    @name, @location, @type = name, location, type
    @guests = []
  end

  def add_reservation(name)
    @guests << name
    "Added"
  end

  def guestlist
    @guests.join("\n")
  end
  # def location # Getter
  #   @location
  # end
  # attr_reader :location

  # def location=(value) # Setter
  #   @location = value
  # end
  # attr_writer :location

end

le_wagon = Restaurant.new("LeWagon", "Lisboa", "Beer")

# le_wagon.location = "Paris" # Setting (writer)
# puts le_wagon.location # Getting (reader)

puts le_wagon.add_reservation("Thomas")
puts le_wagon.add_reservation("Debbie")
puts le_wagon.add_reservation("João").clear

puts le_wagon.guestlist





