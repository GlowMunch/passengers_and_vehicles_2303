require "./lib/passenger"

RSpec.describe Passenger do
  it "Exists" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    expect(charlie).to be_an_instace_of(Passenger)
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end

  it "Can be an adult" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    expect(charlie.adult?).to eq(true)
    expect(taylor.adult?).to eq(false)
  end

  it "Can drive" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
  charlie.driver?
  false

  charlie.drive

  charlie.driver?
  true
  end
end
