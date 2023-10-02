require_relative 'Vehicle'
class Bike < Vehicle

  attr_accessor :wheel_size, :rented_out

  def initialize(make,model,reg_no,wheel_size,rented_out)
    super(make,model,1000,reg_no)
    @_wheel_size = wheel_size
    @rented_out = rented_out
  end

  def get_reg_no
    @_reg_no
  end

  def to_s
    puts "Wheel Size is #{@_wheel_size}"
  end

end