# FreeDoc - Réserve ton docteur

* 
_Creation des models_
```
rails g model Doctor first_name:string last_name:string speciality:string zip_code:string
rails g model Patient first_name:string last_name:string
rails g model Appointment date:datetime
```

_Creation des relations_
Modification des fichiers dans _app/models_
Création d'un seed qui va générer des médecins/patients/appointments

_Ajout de migrations_
```
rails g model City zip_code:string name:string
rails generate migration AddCityToDoctors
rails generate migration AddCityToPatients
rails generate migration AddCityToAppointments
```

_Retrait de spécialité du model Doctor et création d'un model Specialty_
```
rails generate migration RemoveSpecialityFromDoctors
rails generate model Specialities name:string   
```

_Added gem_
```
gem 'faker'
gem 'activerecord-reset-pk-sequence'
gem 'table_print'
```