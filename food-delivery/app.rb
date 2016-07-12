# Require all repositories
Dir["repositories/*.rb"].each {|file| require "./" + file }

# room1 = Room.new(capacity: 2)
# room2 = Room.new(capacity: 3)

# patient1 = Patient.new(name: 'John', cured: true)
# patient2 = Patient.new(name: 'Johnny')
# patient3 = Patient.new(name: 'Jonaldinho')

# Patient belongs to a Room
# patient.room_id
# patient.room

# room1.add_patient(patient1)
# room1.add_patient(patient2)
# room2.add_patient(patient3)

doctors_repository = DoctorsRepository.new
rooms_repository = RoomsRepository.new

patients_repository = PatientsRepository.new(rooms_repository)
appointments_repository = AppointmentsRepository.new(doctors_repository, patients_repository)

# rooms_repository.add(room1)
# rooms_repository.add(room2)

# patients_repository.add(patient1)
# patients_repository.add(patient2)
# patients_repository.add(patient3)

# doctor1 = Doctor.new(name: 'Dre')
# doctor2 = Doctor.new(name: 'Dolittle')

# doctors_repository.add(doctor1)
# doctors_repository.add(doctor2)

# doctor = doctors_repository.find(1)
# patient = patients_repository.find(1)

# appointment = Appointment.new(
#   date: Time.now,
#   doctor: doctor,
#   patient: patient
# )

# doctor.add_appointment(appointment)
# patient.add_appointment(appointment)

# appointments_repository.add(appointment)

p appointments_repository.all
