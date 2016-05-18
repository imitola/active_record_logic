class Customer < ActiveRecord::Base
 # This  Customer class (by way of conventions) maps
 # to a customers table in the database

 #
 belongs_to :province

 # Data Validations

 validates :email, uniqueness: true, presence: true
 validates :name, presence: true
 # By way of the customers table, the columns in this table,
 # become properties of my Customer objects.
 # .id
 # .name
 # .address
 # .city
 # .country
 # .postal_code
 # .email
 # .province_id
 # .created_at
 # .updated_at

 # C - Create - DONE
 # R - Read   - DONE
 # U - Update - DONE
 # D - Delete

end
