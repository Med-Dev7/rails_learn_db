class AddDoctorToJoinTableDoctorSpecialties < ActiveRecord::Migration[5.2]
  def change
    add_reference :join_table_doctor_specialties, :Doctor, foreign_key: true
    add_reference :join_table_doctor_specialties, :Specialty, foreign_key: true
  end
end
