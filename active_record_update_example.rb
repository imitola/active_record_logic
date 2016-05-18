load 'ar.rb'

# Using ActiveRecord::Base to update rows in our customers table.
# Find a customer by primary key.

customer_by_id = Customer.find(9000)

puts customer_by_id.inspect

# Modify  that Customer in object space.
customer_by_id.postal_code = "V1D1N1"
customer_by_id.city        = "Selkirk"
customer_by_id.country     = "CND"

puts customer_by_id.inspect
# First going  to find  a specific Customer.
# Save the Modified Customer to the customers table. (Validations!)

customer_by_id.save

first_customer = Customer.first
puts first_customer.inspect
first_customer.postal_code = "J5V8K0"
first_customer.name = ""

if first_customer.save
  puts "ActiveRecord was able to save this modified first customers"
else
  puts "Unable to save the modified first customer."
end

# This is dangerus becouse it will change the database without
# run the Validations.

first_ten_customers = Customer.limit(10)
#
first_ten_customers.update_all(country: "CND")

first_ten_customers = Customer.limit(10)
puts first_ten_customers.inspect


# to do the same thing but with Validations

first_fifty_customers = Customer.limit(50)
first_fifty_customers[10].name = ""# this line make it faild line 63
# Loop tru each customer
# change it,s city and save it.
# referd to the folowing link for info in conditonals
# http://api.rubyonrails.org/classes/ActiveRecord/Rollback.html
# first_fifty_customers.each do |customer|
# customer.city = "Winnipeg"
# if customer.save
#   puts "Save customer id #{customer.id}."
# else
#   puts "unable to save customer.id #{customer.id}"
# end
# end

# and now if any of this customers faild to save
# its going to tro an exeption

Customer.transaction do
first_fifty_customers.each do |customer|
  customer.city = "Winnipeg"
  if customer.save
    puts "Save customer id #{customer.id}."
  else
    puts ""
     raise ActiveRecord::Rollback, "Unable to save customer.id #{customer.id}"
    end
  end
end

#becouse the colum 10 has an error it will rollback
#all the transactions 
