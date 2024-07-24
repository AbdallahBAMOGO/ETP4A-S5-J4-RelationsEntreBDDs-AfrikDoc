# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
# Création des docteurs
# db/seeds.rb
city1 = City.create(name: "Paris")
city2 = City.create(name: "Lyon")

spec1 = Specialty.create(name: "Cardiology")
spec2 = Specialty.create(name: "Pediatrics")

doc1 = Doctor.create(first_name: "John", last_name: "Doe", zip_code: "75001", city: city1)
doc1.specialties << spec1

doc2 = Doctor.create(first_name: "Jane", last_name: "Smith", zip_code: "75002", city: city2)
doc2.specialties << spec2

pat1 = Patient.create(first_name: "Alice", last_name: "Johnson", city: city1)
pat2 = Patient.create(first_name: "Bob", last_name: "Brown", city: city2)

Appointment.create(date: DateTime.now, doctor: doc1, patient: pat1, city: city1)
Appointment.create(date: DateTime.now, doctor: doc2, patient: pat2, city: city2)
