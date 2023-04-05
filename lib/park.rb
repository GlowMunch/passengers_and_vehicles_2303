class Park
  attr_reader :name, :admission_price, :vehicles, :passengers
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

  def add_passengers
    vehicles.each do |pass|
      @passengers << pass.passengers
    end
  end

  def add_revenue
    @revenue += (@passengers.count * admission_price)
    @revenue
  end

end
