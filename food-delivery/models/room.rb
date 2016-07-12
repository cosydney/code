class Room
  attr_accessor :id
  attr_reader :capacity, :patients

  def initialize(attributes)
    @id = attributes[:id].to_i
    @capacity = attributes[:capacity].to_i
    @patients = attributes[:patients] || []
  end

  def add_patient(patient)
    return false if full?
    patient.room = self
    @patients << patient
  end

  def full?
    @capacity == @patients.size
  end
end
