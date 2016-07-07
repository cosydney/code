class Chef
  attr_reader :name
  def initialize(name, experience, restaurant)
    @name, @experience, @restaurant = name, experience, restaurant
  end
end


class Restaurant
  attr_accessor :location

  @@types = ["Junk"]
  # 1. Class Methods
  def self.types
    @@types
  end

  # 2. Initialize
  def initialize(name, location, type)
    @name = name
    @location = location
    @type = type
    @guests = []
    Restaurant.types << type
  end

  # 1. Instance Methods
  def add_reservation(name)
    @guests << name
    "Added"
  end

  def guestlist
    @guests.join("\n")
  end
end

class FastFood < Restaurant
  def initialize(name, location, type, preparation_time)
    super(name, location, type)
    @preparation_time = preparation_time
  end
end

class Gastronomic < Restaurant
  attr_reader :chef

  def initialize(name, location, type, stars, chef_name, chef_exp)
    super(name, location, type)
    @stars = stars
    @chef = Chef.new(chef_name, chef_exp, self)
  end

  def number_of_stars
    "*" * @stars
  end
end

# le_wagon = Restaurant.new("LeWagon", "Lisboa", "Beer")
# mc_donalds = FastFood.new("McDonalds", "Lisboa", "Junk", 2)

# puts mc_donalds.add_reservation("Thomas")
# puts mc_donalds.add_reservation("Debbie")
# puts mc_donalds.add_reservation("João")

# puts mc_donalds.guestlist

tour_dargent = Gastronomic.new("Tour d'argent", "Paris", "Splurge", 5, "Thomas", 20)

p tour_dargent.chef.name

