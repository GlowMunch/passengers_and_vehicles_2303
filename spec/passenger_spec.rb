require "./lib/passenger"

RSpec.describe Passenger do
  it "Exists" do
  # require './lib/passenger'
  # true
  charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
  # <Passenger:0x00007fc1ad88b3c0...>
  taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
  # <Passenger:0x00007fe0da2cf1b0...>
  expect(charlie.name).to eq("Charlie")
  expect(charlie.age).to eq(18)
require 'pry'; binding.pry
  charlie.adult?
  true

  taylor.adult?
  false

  charlie.driver?
  false

  charlie.drive

  charlie.driver?
  true
  end
end
