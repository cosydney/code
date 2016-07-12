require_relative '../models/room'
require 'csv'

class RoomsRepository
  def initialize
    @rooms = []
    @csv_file = 'db/rooms.csv'
    load
  end

  def add(room)
    room.id = @rooms.size.zero? ? 1 : @rooms[-1].id.next
    @rooms << room
    save
  end

  def find(room_id)
    @rooms.find { |room| room.id == room_id }
  end

  def all
    @rooms
  end

  def save
    CSV.open(@csv_file, "r+") do |csv|
      csv << [ "id", "capacity" ]
      @rooms.each do |room|
        csv << [ room.id, room.capacity ]
      end
    end
  end

  def load
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      @rooms << Room.new(row)
    end
  end
end
