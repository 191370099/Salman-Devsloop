require_relative 'ClassA'
class ClassB < ClassA
  
  def introduction
    super
    puts "Hello! I am B child of A"
  end
  
end