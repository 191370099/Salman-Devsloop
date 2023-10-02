class Vehicle

  attr_accessor :make, :modal, :reg_no
  attr_reader :rent, :type

  def initialize(make,model,reg_no,type)
    @make = make
    @model = model
    @reg_no = reg_no
    @type = type
    @rent = {bike:1000, car:10000, van:20000}
  end


  def to_s()
    puts "This is #{@make}, model #{@model}, Number #{reg_no} and rent #{@rent[type.to_sym]}"
  end

end