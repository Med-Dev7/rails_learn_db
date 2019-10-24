class Specialty < ApplicationRecord
    belongs_to :join_table_doctor_specialty, optional: true
end
