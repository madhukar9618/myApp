json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_visit, :reminder_of_appointment, :reason_for_visit, :pet_id, :doctor_id
  json.url appointment_url(appointment, format: :json)
end
