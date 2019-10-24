# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
Doctor.destroy_all
Patient.destroy_all
City.destroy_all
Specialty.destroy_all
JoinTableDoctorSpecialty.destroy_all
Appointment.destroy_all

39.times do |i|
    if i < 10
        p = Patient.create(first_name: "toto", last_name: "toto")

    elsif i >10 && i< 20
        p = Patient.create(first_name: "tutu", last_name: "tutu")
    else
        p = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    end

    d = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
    
    patients_list = d.patients

    a = Appointment.create(date: Faker::Date.between(from: 2.days.ago, to: Date.today), doctor: d, patient: p )

end
10.times do
    c = City.create(city: Faker::Address.country)
end
specialty = ["ambulancier","infirmier","aide-soignant","kinésithérapeute","diététicien", "médecins"]
specialty.each do |x|
s = Specialty.create
s.workName = x
s.save
# s_all << s
end

39.times do |i|
    # d = Doctor.create
    # d.doctors << Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
    # p = Patient.create
    # p.patients << Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    # a = Appointment.create(d.id, p.id)
# j = JoinTableDoctorSpecialty.create(d[i].id,  s[i].id)
end
