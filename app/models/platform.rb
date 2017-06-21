class Platform < ApplicationRecord

    #has_and_belongs_to_many :employees
    has_many :conections
    has_many :employees, through: :conections

end
