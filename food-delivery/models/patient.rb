class Patient
  attr_accessor :room, :id, :name, :cured

  def initialize(attributes)
    @id = attributes[:id].to_i
    @cured = attributes[:cured] || false
    @room = attributes[:room]
    @name = attributes[:name]
    @appointments = []
  end

  def cure
    @cured = true
  end

  def add_appointment(appointment)
    appointment.patient = self
    @appointments << appointment
  end
end
