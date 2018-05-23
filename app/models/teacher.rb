class Teacher < ApplicationRecord
    has_many :cohorts
   
    validates :salary, numericality: { greater_than_or_equal_to: 1 }
end
