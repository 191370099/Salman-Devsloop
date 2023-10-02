require_relative 'Vehicle'
class Van < Vehicle

  attr_accessor :num_of_wheels, :height, :rented_out

  def initialize(make,model,reg_no,num_of_wheels,height,rented_out)
    super(make,model,reg_no,'van')
    @num_of_wheels = num_of_wheels
    @height = height
    @rented_out = rented_out
  end

  def to_s
    super
    puts "Number of Wheels are #{@num_of_wheels} and Van Height is #{@height}"
  end
  
end