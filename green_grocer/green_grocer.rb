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
    coups_array = []
    number.times do
      coups_array << coups.sample
    end
    coups_array
  end
end

#Implement a method checkout to calculate total cost of a cart of items and
#apply discounts and coupons as necessary.

class TotalCost
  attr_reader :cart, :coups

  def initialize(cart, coups)
    @cart = cart
    @coups = coups
  end

  def create_count_elements
    count_items = {}
      cart.each do |cart_info|
        cart_info.each do |item_name, hash|
          unless count_items[item_name]
            count_items[item_name] = hash
            count_items[item_name][:count] = 1
          else
            count_items[item_name][:count] += 1
          end
        end
      end
    count_items
  end

  def apply_coupons
    coupons_applied = []
      create_count_elements.each do |item_hash, value_hash|
        coups.each_with_index do |item, index|
          if item[:item] == item_hash && item[:num] >= value_hash[:count]
            value_hash[:price] = item[:cost]
            @coups.delete(index)
          end
        end
      coupons_applied << {item_hash => value_hash}
      end
    coupons_applied
  end

  def total_price
    total = 0
    apply_coupons.each do |cart_info|
      cart_info.each do |item_name, hash|
         total += hash[:price] * hash[:count]
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