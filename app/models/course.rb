class Course < ApplicationRecord

    has_many :cohorts
    validates :hours, numericality: { greater_than_or_equal_to: 1 }
    
end
