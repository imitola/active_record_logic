load 'ar.rb'

# Use the Customer class to count the rous in the customers table.
#
# number_of_customers = Customer.count
#
# #SELECT COUNT(*) FROM customers;
#
# puts "There are #{number_of_customers} customers in my customers table."
#
# # Fetch the first customers in the customers table
#
# first_customer = Customer.first
#
# puts first_customer.inspect
#
# puts "The first customer's name is #{first_customer.name} and they" +
#       "live in the city of #{first_customer.city}."
#
#       puts first_customer.class
#
#       last_customer = Customer.last
#       puts last_customer.name
#
#       # We can find customers objects by id, although we do so rarely.
#       c_hartman = Customer.find(498)

      #If we wanted to find *all* customers:

      all_customers = Customer.all

      puts all_customers.class

      puts "The size of the customer table is #{all_customers.size}"

      # This code query teh holle database
      # The size of the customer table is 10676
      # wich is not good

      puts all_customers[0].name
      puts all_customers[1].name


      # this is bettor

      first_five_customers = Customer.limit(5)

      puts first_five_customers.size

      first_five_customers.each do |customer|
        puts "#{customer.name} live in #{customer.country}."
        puts "#{customer.name} live in #{customer.city}."
      end

      #customers_from_wetaskiwin = Customer.where({:city => 'Wetaskiwin'})
      # In rails is this way
      customers_from_wetaskiwin = Customer.where(city: 'Wetaskiwin').limit(5)

      puts "There are #{customers_from_wetaskiwin.size} customers from the " +
            "city of Wetaskiwin"

      customers_with_a_names = Customer.where('name LIKE "a%"').limit(10)
      customers_with_a_names.each { |c| puts c }
