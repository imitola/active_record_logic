load 'ar.rb'

# DELETING ROWS WITH ACTIVE RECORD

# Let's find a customer in our customers table.
#
# You will need to run the active_record_create.rb script
# first, otherwise this customer will not exist.

kyles = Customer.where(name: 'Kyle Geske')
puts "We have #{kyles.size} Kiles in the customer table"

kyles.destroy_all

kyles = Customer.where(:name => 'Kyle Geske')
puts "After the destroy_all, we have #{kyles.size} Kiles in the customer table"

some_customer = Customer.find(9001)

puts  some_customer.inspect

some_customer.destroy unless some_customer.nil?
