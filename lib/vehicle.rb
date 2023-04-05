class Vehicle
  attr_reader :year, :make, :model, :passengers
  def initialize (year, make, model, passengers = [])
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = passengers
  end

  def speed
    @speeding = true
  end

  def speeding?
    @speeding
  end

  def add_passenger(ryder)
    @passengers << ryder
  end

  def num_adults
    adults = passengers.find_all do |adult|
      adult.adult?
    end
    adults.count
  end

end