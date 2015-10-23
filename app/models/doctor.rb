class Doctor < ActiveRecord::Base
	validates :name, length: {maximum: 35}, presence: true 
	validates :zip, length: {in: 1..5}
	validates :years_in_practice, inclusion: {in: 1..100}

	has_many :appointments
	has_many :pets, :through => :appointments
end
