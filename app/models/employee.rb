class Employee < ApplicationRecord
    validates :first_name, presence: true
end
