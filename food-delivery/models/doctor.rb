class Doctor
  attr_accessor :id
  attr_reader :name

  def initialize(attributes)
    @id = attributes[:id].to_i
    @name = attributes[:name]
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.doctor = self
    @appointments << appointment
  end
end
