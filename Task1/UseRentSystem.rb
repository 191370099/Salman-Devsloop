require_relative 'Car'
require_relative 'Van'
require_relative 'Bike'

car1 = Car.new("Honda","HD123","1",4,false)
car2 = Car.new("Prado","PD1234","2",6,false)
car3 = Car.new("Honda","HD1235","3",8,true)
car4 = Car.new("Rolex","KD623","4",4,true)

bike1 = Bike.new("Honda","HG726","5",12,false)
bike2 = Bike.new("Suzuki","KD623","6",13,true)
bike3 = Bike.new("Honda","KD663","7",14,false)
bike4 = Bike.new("United","KD653","8",15,false)

van1 = Van.new("Suzuki","GF324","9",4,10,false)
van2 = Van.new("Suzuki","GF324","10",6,11,false)
van3 = Van.new("Civic","GF324","11",8,12,true)
van4 = Van.new("Suzuki","GF324","12",4,13,false)

$vehicles = [car1, car2, car3, car4, bike1, bike2, bike3, bike4, van1, van2, van3, van4]

def add_vehicle(new_vehicle)
  $vehicles << new_vehicle
end

def remove_vehicle(reg_no)
 $vehicles.each { |vehicle|
  if vehicle.get_reg_no == reg_no
  $vehicles.delete(vehicle)
 end
 }
end

van5 = Van.new("Suzuki","GF324","13",4,13,false)
add_vehicle(van5)
remove_vehicle("13")

def inventory
  $vehicles.each { |vehicle|
    if !vehicle.rented_out
      puts "Registeration Number of Available Vehicle is " + vehicle.get_reg_no
    end
  }
end

def rent_out(type)
  if type == 'car'
    return 10000
  elseif type == 'bike'
    return 1000
  elseif type == 'van'
    return 20000
  else
    return "Invalid Type"
  end
end

result = rent_out('car')
puts result
inventory
puts $vehicles.size