class Listing

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city_name)
    self.all.select do |listing|
      listing.name == city_name
    end
  end

  def self.most_popular
    Trip.all.group_by do |trip|
      trip.listing
    end.sort_by do |listing, trips|
       -trips.count
    end[0][0]
  end

  def guests
    Trip.all.select do |trip|
      trip.listing == self
    end.map {|guest| guest.guest}
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    self.trips.count
  end
end
