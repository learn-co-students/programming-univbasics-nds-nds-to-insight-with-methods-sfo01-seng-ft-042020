$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(d)
  total = 0
   index = 0
  while index < d[:movies].length do
     total += d[:movies][index][:worldwide_gross]
     index += 1
   end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.size do
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
   result
end

 def list_of_directors(source)
   director_index = 0
   director_list = Array.new

   while director_index < source.size do
     director_list.push(source[director_index][:name])
     director_index += 1
   end
   director_list
 end
 
 def total_gross(source)
   total_gross_of_earnings = 0
   director_index = 0

   while director_index < source.size do
     total_gross_of_earnings += gross_for_director( source[director_index] )
     director_index += 1
   end
 total_gross_of_earnings
 end
