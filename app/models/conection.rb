class Conection < ActiveRecord::Base
    belongs_to :employee
    belongs_to :platform
end