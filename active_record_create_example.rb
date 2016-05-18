load 'ar.rb'


# CREATE  - Adding new  rows to the customers table by way of
# the customer class.
#
# number_of_customers = Customer.count
# puts "At the start of my script we have #{number_of_customers} customers"
#
# # Method One -  Create a Customer object in "object space"
#
# new_customer = Customer.new
# puts new_customer.class
#   new_customer.name = "Kyle Geske"
#   new_customer.email       = "kkk@yahoo.com"
#   new_customer.address     = "160 Princess St."
#   new_customer.postal_code = "XXXXXXX"
#   new_customer.country = "canada  "
# puts "Inspect the  customer before we  save:"
# puts new_customer.inspect
#
# # Save the customer
# new_customer.save
#
# puts "Inspect the customer before we save:"
# puts new_customer.inspect
#
# number_of_customers = Customer.count
# puts "At the end of my script we have #{number_of_customers} customers"


# Method Two - Create a Customer object using new, but this time
# we,re going to provide some data to the customer.

wally = Customer.new(name: "Wally Glutton",
                    email: "wally.glutoon@mailinator.com",
                    address: "160 Princess St.")

puts wally.inspect

if wally.save
  puts "We have save the Wally custommer to the database"
else
  puts "We cannot save this object do to validations"
# Looping tru erros messages wich column triger the error,
# what the error actualy ware end for each of thouse erros Looping tru them
# and tell my in words what couse my validations to fall
  wally.errors.messages.each do |column, errors|
    errors.each { |error| puts "The #{column} property #{error}." }
end
end


jane = Customer.create(name: "Jane Smith",
                  email: 'jsmith@mailinator.com',
                  address: "160  Princess St",
                  city: 'Winnipeg',
                  country: 'Canada',
                  postal_code: "XXXXXXX")

                  puts jane.inspect


# Count  the rows after we have created some new customer

number_of_customers = Customer.count
puts "At the end of my script we  have #{number_of_customers} customers "
