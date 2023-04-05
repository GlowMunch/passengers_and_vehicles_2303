class Vehicle
  attr_reader :year, :make, :model, :passengers
  def initialize (year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speed
    @speeding = true
  end

  def add_passenger(ryder)
    @passengers << ryder
  end

  def num_adults
    
  end

end