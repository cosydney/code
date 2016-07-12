require_relative '../models/appointment'

class AppointmentsRepository
  def initialize(doctors_repository, patients_repository)
    @appointments = []
    @doctors_repository = doctors_repository
    @patients_repository = patients_repository
    @csv_file = 'db/appointments.csv'

    load
  end

  def add(appointment)
    appointment.id = @appointments.size.zero? ? 1 : @appointments[-1].id.next
    @appointments << appointment
    save
  end

  def all
    @appointments
  end

  def save
    CSV.open(@csv_file, "w") do |csv|
      csv << [ "id", "date", "doctor_id", "patient_id" ]
      @appointments.each do |appointment|
        csv << [ appointment.id, appointment.date, appointment.doctor.id, appointment.patient.id ]
      end
    end
  end

  def load
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      appointment = Appointment.new(row)
      @appointments << appointment
      @doctors_repository.find(row[:doctor_id].to_i).add_appointment(appointment)
      @patients_repository.find(row[:patient_id].to_i).add_appointment(appointment)
    end
  end
end
