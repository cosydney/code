require_relative '../models/doctor'
require 'csv'

class DoctorsRepository
  def initialize
    @doctors = []
    @csv_file = 'db/doctors.csv'
    load
  end

  def add(doctor)
    doctor.id = @doctors.size.zero? ? 1 : @doctors[-1].id.next
    @doctors << doctor
    save
  end

  def find(doctor_id)
    @doctors.find { |doctor| doctor.id == doctor_id }
  end

  def all
    @doctors
  end

  def save
    CSV.open(@csv_file, "r+") do |csv|
      csv << [ "id", "name" ]
      @doctors.each do |doctor|
        csv << [ doctor.id, doctor.name ]
      end
    end
  end

  def load
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      @doctors << Doctor.new(row)
    end
  end
end
