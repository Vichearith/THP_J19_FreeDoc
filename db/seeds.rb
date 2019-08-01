require 'faker'
specialties_array = ["Immunology|Allergy and immunology","Adolescent medicine","Anesthesiology","Aviation medicine|Aerospace medicine","Cardiology","Cardiothoracic surgery","Clinical neurophysiology","Colorectal surgery","Dermatology","Emergency medicine","Endocrinology","Family Medicine","Forensic pathology","Forensic psychiatry","Gastroenterology","General surgery","Geriatrics","Geriatric psychiatry","Gynecologic oncology","Hematology","Infectious disease (medical specialty)|Infectious disease","Internal medicine","Interventional radiology","Intensive care medicine","Maternal-fetal medicine","Medical biochemistry","Medical genetics","Medical oncology","Neonatology","Nephrology","Neurology","Neuropathology","Neurosurgery","Nuclear medicine","Obstetrics and gynecology","Occupational medicine","Ophthalmology","Orthopedic surgery","Oral and maxillofacial surgery","Otorhinolaryngology","Pathology","Pediatrics","Pediatric emergency medicine","Pediatric surgery","Physical medicine and rehabilitation","Plastic surgery|Plastic, reconstructive and aesthetic surgery","Psychiatry","Public health","Radiation oncology","Radiology","Pulmonology|Respiratory medicine","Rheumatology","Sports medicine","Neuroradiology","Urology","Vascular surgery"]
# 100.times do
#   doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: specialties_array.sample, zip_code:  Faker::Address.zip_code)
# end

# 100.times do
#   patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
# end

# 100.times do
#   appointment = Appointment.create!(date: Faker::Date.between(from: 1.year.ago, to: Date.today), doctor_id: Faker::Number.between(from: 1, to: 100), patient_id: Faker::Number.between(from: 1, to: 100))
# end

#--------#

# 100.times do
#   city = City.create!(zip_code:  Faker::Address.zip_code, name:  Faker::Address.city)
# end

#--------#

# 100.times do
#   doctor = Doctor.find_by(city_id: nil).update(city_id: Faker::Number.between(from: 1, to: 100))
# end

# 100.times do
#   appointment = Appointment.find_by(city_id: nil).update(city_id: Faker::Number.between(from: 1, to: 100))
# end

# 100.times do
#   patient = Patient.find_by(city_id: nil).update(city_id: Faker::Number.between(from: 1, to: 100))
# end

#--------#

# specialties_array.count.times do
#     specialty = Specialty.create(name: specialties_array.delete(specialties_array.sample))
# end

100.times do
  join_table_doctor_specialty = JoinTableDoctorSpecialty.create(doctor_id: Faker::Number.between(from: 1, to: 100), specialty_id: Faker::Number.between(from: 1, to: specialties_array.count))
end