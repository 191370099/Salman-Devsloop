class Vehicle

  attr_accessor :make, :modal, :reg_no
  attr_reader :rent

  def initialize(make,model,rent,reg_no)
    @_make = make
    @_model = model
    @_rent = rent
    @_reg_no = reg_no
  end

  def to_s()
    puts "This is #{@_make}, model #{@_model}, Number #{reg_no} and rent #{@_rent}"
  end

end