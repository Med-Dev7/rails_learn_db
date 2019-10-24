class JoinTableDoctorSpecialty < ApplicationRecord
    has_many :doctors
    has_many :specialty
end
