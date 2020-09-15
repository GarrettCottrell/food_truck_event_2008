class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name  = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    names = []
    @food_trucks.each do |food_truck|
    names << food_truck.name
    end
    names
  end

  def food_trucks_that_sell(item)
    food_truck_names = []
    @food_trucks.each do |food_truck|
      if food_truck.inventory[item]
        food_truck_names << food_truck
        end
      end
      food_truck_names
    end

  def total_inventory
    total_inventory_hash = {}
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |key, value|
      if total_inventory_hash[key]
        total_inventory_hash[key] = {quantity: value, food_trucks: food_truck}
        end
      end
    end
    total_inventory_hash
  end
end
