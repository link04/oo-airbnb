class Guest

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pro_traveler
    Trip.all.group_by do |trip|
      trip.guest
    end.select do |guest, trips|
       trips.count > 1
    end.keys
  end

  def self.find_all_by_name(guest_name)
    self.all.select do |guest|
      guest.name == guest_name
    end
  end

  def listings
    Trip.all.select do |trip|
      trip.guest == self
    end.map {|listing| listing.listing}
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def trip_count
    self.trips.count
  end

end
