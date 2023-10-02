require_relative 'Vehicle'
class Car < Vehicle

  attr_accessor :num_of_doors, :rented_out

  def initialize(make,model,reg_no,num_of_doors,rented_out)
    super(make,model,reg_no,'car')
    @num_of_doors = num_of_doors
    @rented_out = rented_out
  end

  def to_s
    super
    puts "Number of Doors are #{@num_of_doors}"
  end

  
end