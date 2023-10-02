require_relative 'Vehicle'
class Bike < Vehicle

  attr_accessor :wheel_size, :rented_out

  def initialize(make,model,reg_no,wheel_size,rented_out)
    super(make,model,reg_no,'bike')
    @wheel_size = wheel_size
    @rented_out = rented_out
  end

  def to_s
    super
    puts "Wheel Size is #{@wheel_size}"
  end

end