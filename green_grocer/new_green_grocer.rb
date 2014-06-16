# Objectives:

# Create a checkout method to calculate the total cost of a cart of items and
# apply discounts and coupons as necessary.

# Dr. Steve Bruhle, your green grocer, isn't ready, but you are!

# Skills:

# any?, all?, none?, each, map/collect

# Instructions:

require 'awesome_print'
require 'pry'

ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance => true}},
          {"AVOCADO" => {:price => 3.00, :clearance => true}},
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

# Code generates a random cart of items and a random set of coupons.
class Cart
  def self.total_number_is(number, items)
    cart = []
    number.times do
      cart << items.sample
    end
    cart
  end
end

class Coupon
  def self.total_number_is(number, coups)
    coups = []
    number.times do
      coups << coups.sample
    end
    coups
  end
end

#Implement a method checkout to calculate total cost of a cart of items and
#apply discounts and coupons as necessary.

class Total_Cost
  attr_reader :cart, :coups

  def initialize(cart, coups)
    @cart = cart
    @coups = coups
  end

  def total_price
    total = 0
    @cart.each do |cart_info|
      cart_info.each do |item_name, hash|
        hash.each do |key, value|
         total += value if key == :price
        end
      end
    end
    total
  end

end

##the cart is currently an array of individual items, translate it into a hash that
#includes the counts for each item
#For example if your cart was [  {"AVOCADO" => {:price => 3.00, :clearance
#=> true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}] it would
#become {"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}
##create a checkout method that calculates the total cost of the cart when
##checking out, check the coupons and apply the discount if the proper number
##of items is present if any of the items are on clearance add a 20% discount
##if the customer has 2 of the same coupon, triple the discount if none of the
##items purchased have a unit price greater than 5$ give the customer a 10$
##discount off the whole cart

# Code:




#{"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}
# def count_elements_cart(cart)
#      new_cart ={}
#      cart.each do |item_hash|
#          # first iteration = {"AVOCADO" => {:price => 3.00, :clearance => true}}
#          item_hash.each do |food_key, state_value|
#           #ap state_value
#           # food_key is a string "Avocado" and state_value is a hash of food attributes example :price=> 3.00
#                if new_cart[food_key].nil?
#                     new_cart[food_key] = state_value
#                     new_cart[food_key][:count] = 1
#                else
#                     new_cart[food_key][:count] += 1
#                end
#           end
#      end
#       new_cart
# end

# #count_elements_cart(ITEMS)

# #create a checkout method that calculates the total cost of the cart

# def checkout
#      cost_array = []
#      sum = 0
#      count_elements_cart(ITEMS).each do |food, value|
#           cost_array << value[:count] * value[:price]
#      end
#      cost_array.each do |element|
#        sum += element
#   end
#       ap sum
# end



# checkout











