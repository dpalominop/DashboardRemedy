class Employee < ApplicationRecord
    #has_and_belongs_to_many :platforms
    has_many :conections
    has_many :platforms, through: :conections
end
