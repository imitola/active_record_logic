load 'ar.rb'


# CREATE  - Adding new  rows to the customers table by way of
# the customer class.

number_of_customers = Customer.count
puts "At the start of my script we have #{number_of_customers} customers"

# Method One -  Create a Customer object in "object space"

new_customer = Customer.new
puts new_customer.class
  new_customer.name = "Kyle Geske"
  new_customer.email       = "kkk@yahoo.com"
  new_customer.address     = "160 Princess St."
  new_customer.postal_code = "XXXXXXX"
puts "Inspect the  customer before we  save:"
puts new_customer.inspect

# Save the customer
new_customer.save

puts "Inspect the customer before we save:"
puts new_customer.inspect

number_of_customers = Customer.count
puts "At the end of my script we have #{number_of_customers} customers"
