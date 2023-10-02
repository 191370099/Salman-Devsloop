require_relative 'ClassA'
class ClassC < ClassA
  
  def introduction
    super
    puts "Hello! I am C child of A"
  end
  
end