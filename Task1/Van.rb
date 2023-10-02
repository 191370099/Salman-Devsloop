require_relative 'Vehicle'
class Van < Vehicle

  attr_accessor :num_of_wheels, :height, :rented_out

  def initialize(make,model,reg_no,num_of_wheels,height,rented_out)
    super(make,model,20000,reg_no)
    @_num_of_wheels = num_of_wheels
    @_height = height
    @rented_out = rented_out
  end

  def get_reg_no
    @_reg_no
  end

  def to_s
    puts "Number of Wheels are #{@_num_of_wheels} and Van Height is #{@_height}"
  end
  
end