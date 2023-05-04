# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
specialties1 = ["Cardiologue", "Généraliste", "Dermatologue", "Ophtalmologue", "Gynécologue", "Psychiatre", "Chirurgien", "Radiologue", "Pédiatre", "Urologue", "Endocrinologue", "Neurologue", "Oncologue", "Rhumatologue"]
specialties2 = ["Aucune", "Chirurgien", "Acupuncture"]
# Create cities
100.times do
  City.create(
    city: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

100.times do
  Specialty.create(
    specialty1: specialties1.sample,
    specialty2: specialties2.sample
  )
end

# Create doctors
100.times do
  Doctor.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    specialty_id: rand(1..10),
    city_id: rand(1..100)
  )
end

# Create patients
100.times do
  Patient.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    city_id: rand(1..100)
  )
end

# Create appointments
100.times do
  Appointment.create(
    date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 120),
    doctor_id: Doctor.find(rand(1..100)),
    patient_id: Patient.find(rand(1..100))
  )
end
