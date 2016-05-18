load 'ar.rb'

# ActiveRecord Associations

first_customer = Customer.first

puts first_customer.inspect


puts first_customer.province.name
#    ^--Customer Object ^-- Associated Province Object
# Although we can manually find Associated provinces, why would we?
# This in another way
 first_customers_province = Province.find(first_customer.province_id)
 #first_province = Province.find(1)

puts first_customers_province.name

# We can go the other direction as well
 last_province = Province.last

 puts last_province.inspect


puts  last_province.customers.size
#      ^-- Province Object ^-- The collection Associated Customer objects.
