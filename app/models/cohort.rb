class Cohort < ApplicationRecord
    belongs_to :course
    belongs_to :teacher
    has_many :cohort_students
    has_many :students, through: :cohort_students
end
