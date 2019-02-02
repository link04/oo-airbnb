require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Put your variables here~!

listing1 = Listing.new('Bronx')
listing2 = Listing.new('Seattle')
listing3 = Listing.new('Chicago')
listing4 = Listing.new('Queens')
listing5 = Listing.new('Chicago')

guest1 = Guest.new('Miguel Julio')
guest2 = Guest.new('Juan Julio')
guest3 = Guest.new('Julio Miguel')
guest4 = Guest.new('John Julio')
guest5 = Guest.new('Maria Julia')

trip1 = Trip.new(guest1,listing1, '4 Days' )
Trip.new(guest5,listing4, '3 Days' )
Trip.new(guest1,listing2, '34 Days' )
Trip.new(guest3,listing1, '5 Days' )
Trip.new(guest3,listing2, '2 Days' )
Trip.new(guest5,listing4, '3 Days' )
Trip.new(guest4,listing2, '1 Days' )
Trip.new(guest3,listing3, '334 Days' )
Trip.new(guest2,listing4, '334 Days' )

#listing methods testing
listing2.guests
listing2.trips
listing2.trip_count
Listing.all
Listing.find_all_by_city('Chicago')
Listing.most_popular
#guest methods testing
guest4.listings
guest4.trips
guest4.trip_count
Guest.all
Guest.pro_traveler
Guest.find_all_by_name('Juan Julio')
#trip methods testing
trip1.listing
trip1.guest
Trip.all

binding.pry

0
