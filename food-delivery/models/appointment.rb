class Appointment
  attr_accessor :id, :patient, :doctor, :date

  def initialize(attributes)
    @id = attributes[:id].to_i
    @doctor = attributes[:doctor]
    @patient = attributes[:patient]
    @date = attributes[:date]
  end
end
