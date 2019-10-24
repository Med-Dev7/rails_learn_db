class Doctor < ApplicationRecord
    belongs_to :cities, optional: true
    has_many :appointments
    has_many :patients, through: :appointments
    belongs_to :join_table_doctor_specialty, optional: true
end
