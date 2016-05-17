load 'ar.rb'

# Use the Customer class to count the rous in the customers table.

number_of_customers = Customer.count

#SELECT COUNT(*) FROM customers;

puts "There are #{number_of_customers} customers in my customers table."

# Fetch the first customers in the customers table

first_customer = Customer.first

puts first_customer.inspect

puts "The first customer's name is #{first_customer.name} and they" +
      "live in the city of #{first_customer.city}."

      puts first_customer.class

      last_customer = Customer.last
      puts last_customer.name

      # We can find customers objects by id, although we do so rarely.
      c_hartman = Customer.find(498)
