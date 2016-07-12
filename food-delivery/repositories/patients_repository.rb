require_relative '../models/patient'

class PatientsRepository
  def initialize(rooms_repository)
    @patients = []
    @rooms_repository = rooms_repository
    @csv_file = 'db/patients.csv'
    load
  end

  def add(patient)
    patient.id = @patients.size.zero? ? 1 : @patients[-1].id.next
    @patients << patient
    save
  end

  def all
    @patients
  end

  def find(patient_id)
    @patients.find { |patient| patient.id == patient_id }
  end

  def save
    CSV.open(@csv_file, "w") do |csv|
      csv << [ "id", "name", "cured", "room_id" ]
      @patients.each do |patient|
        csv << [ patient.id, patient.name, patient.cured, patient.room.id ]
      end
    end
  end

  def load
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      patient = Patient.new(row)
      @patients << patient
      id = row[:room_id].to_i
      room = @rooms_repository.find(id)
      room.add_patient(patient)
    end
  end
end
