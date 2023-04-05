require "./lib/park"
require "./lib/vehicle"
require "./lib/passenger"

RSpec.describe Park do
  it "Makes a park" do
    park = Park.new("seaworld", 10)
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
    vehicle_2 = Vehicle.new("2011", "Dodge", "Ram")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    vehicle_1.add_passenger(charlie)    
    vehicle_1.add_passenger(jude)    
    vehicle_1.add_passenger(taylor)
    park.add_vehicle(vehicle_1)
    park.add_vehicle(vehicle_2)
    expect(park.vehicles).to eq([vehicle_1, vehicle_2])
    expect(park.name).to eq("seaworld")
    expect(park.admission_price).to eq(10)
    require 'pry'; binding.pry
  end
end

# 1. Create a `Park` class. Each park has a `unique name` and `admission price`, as well as a way to read that data.
# 2. Each park has `vehicles` that entered the park, as well as a way to read that data.
# 3. Each park can list all `passengers` that were in the vehicles that entered the park. 
# 4. Each park can calculate `revenue` generated. Revenue is generated by charging the admission price per adult that entered the park.

# Build upon your existing code from the first two iterations to implement this functionality.

# Method Name                 | Return Value (type)
# -----------                 | -------------------
# `name`                      | `String`
# `admission_price`           | `integer`
# `vehicles`                  | `Array` of `Vehicle` objects
# `add_vehicle(vehicle)`      | `vehicles` (`Array` of `Vehicle` objects)
# `passengers`                | `Array` of `Passenger` objects
# `revenue`                   | `Integer` 
