class Appointment < ActiveRecord::Base
  belongs_to :pet
  belongs_to :doctor
  validates :reminder_of_appointment, presence: true
  validates :reason_for_visit, presence: true
  validate :dateFunction
  def dateFunction
  	if self.date_of_visit<Date.today
  		errors.add(:date_of_visit, "date cannot be from past")
  	end
  end
end








