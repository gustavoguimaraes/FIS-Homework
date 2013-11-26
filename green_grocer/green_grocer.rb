# Objectives:

# Create a checkout method to calculate the total cost of a cart of items and apply discounts and coupons as necessary.

# Dr. Steve Bruhle, your green grocer, isn't ready, but you are!

# Skills:

# any?, all?, none?, each, map/collect

# Instructions:

# Code generates a random cart of items and a random set of coupons.
#Implement a method checkout to calculate total cost of a cart of items and apply discounts and coupons as necessary.

# Code:

ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance => true}},
          {"KALE" => {:price => 3.00,:clearance => false}},
          {"KALE" => {:price => 3.00,:clearance => false}},
          {"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
          {"ALMONDS" => {:price => 9.00, :clearance => false}},
          {"TEMPEH" => {:price => 3.00,:clearance => true}},
          {"CHEESE" => {:price => 6.50,:clearance => false}},
          {"BEER" => {:price => 13.00, :clearance => false}},
          {"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
          {"BEETS" => {:price => 2.50,:clearance => false}}]

COUPS = [  {:item=>"AVOCADO", :num=>2, :cost=>5.00},
          {:item=>"BEER", :num=>2, :cost=>20.00},
          {:item=>"CHEESE", :num=>3, :cost=>15.00}]

##randomly generates a cart of items
def generateCart
  cart = []
  rand(20).times do
      cart.push(ITEMS.sample)  
  end
  cart
end

##randomly generates set of coupons
def generateCoups
  coups = []
  rand(2).times do
      coups.push(COUPS.sample)
  end
  coups
end

# ----------------------------------------methods written for these exercise are below---------------------------------------

#counting the items i the cart, and creating a hash that tracks the names of the items, and their counts
def count_items(cart_array)
	counts = {}
	counts_array = []
	cart_array.each do |item|
	#{"AVOCADO" => {:price => 3.00, :clearance => true}}
 	item.each do |name, attributes |
 	#it goes through the same list ie cart
 	#"avocado"=> 2
 		counts[name] = cart_array.each do |other_items| 
 		other_items == item
 			counts_array << other_items
 		#end
 	end
 	end
 end
 puts counts_array
end

#update the cart, so that each item has its count in the cart 
#and remove duplicate items in the cart
def update_cart_counts(cart, counts)
	cart.uniq!

	cart.each do |item|

		item.each do |name, attributes|
			#key is "Avocado", value is is {:price => 3.0, :clearance_items=>true}
			#counts is {"Avocado" => 2, "Kale"=>2, "Black_Beans"=>1, "Almonds"=>1, etc}
			counts.each do |item2, number|
				#item2 should be "Avocado", and number should be 2
				attributes[:count] = number if item2 == name
			end
		end
	end
end









counts = count_items(ITEMS)


##the cart is currently an array of individual items, translate it into a hash that includes the counts for each item
  #For example if your cart was [  {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]
  #it would become {"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}
##create a checkout method that calculates the total cost of the cart
##when checking out, check the coupons and apply the discount if the proper number of items is present
##if any of the items are on clearance add a 20% discount
##if the customer has 2 of the same coupon, triple the discount
##if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart
















