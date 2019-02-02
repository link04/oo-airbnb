class Trip

 @@all = []
 attr_reader :duration, :guest, :listing

 def initialize(guest, listing, duration)
   @guest = guest
   @listing = listing
   @duration = duration
   @@all << self
 end

 def self.all
   @@all
 end

end
