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
#unable to make this work
  def passengers
    vehicles.passengers.each do |pass|
      @passengers << pass
    end
  end

  def revenue
    @revenue += (@passengers.count * admission_price)
    @revenue
  end

end
