class Pet < ActiveRecord::Base
  has_many :apointments
  has_many :doctors, :through => :appointments
  belongs_to :customer
  validates :pet_name, length: {maximum: 35}, presence: true
  validates :type_of_pet, inclusion: {in: %w(dog cat bird)}
  validates :breed, length: {maximum: 35}, presence: true 
  validates :age, presence: true
  validates :weight, presence: true
  validates :date_of_visit, presence: true
end
