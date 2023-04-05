class Park
  attr_reader :name, :admission_price, :vehicles
  def initialize (name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
    @passengers = []
    @revenue = 0
  end

  def add_vehicle(car)
    @vehicles << car
    end
  end

  def passengers
    @passengers = vehicles.find_all do |pass|
      passengers
    end
    @passengers.count
  end

end