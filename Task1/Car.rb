require_relative 'Vehicle'
class Car < Vehicle

  attr_accessor :num_of_doors, :rented_out

  def initialize(make,model,reg_no,num_of_doors,rented_out)
    super(make,model,10000,reg_no)
    @_num_of_doors = num_of_doors
    @rented_out = rented_out
  end

  def get_reg_no
    @_reg_no
  end

  def to_s
    puts "Number of Doors are #{@_num_of_doors}"
  end

  
end