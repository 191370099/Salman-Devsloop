duplicate_lambda = lambda { |array| array.uniq }

duplicate_proc = Proc.new { |array, duplicate_lambda|
  puts "Original Array: #{array}"
  modified_array = duplicate_lambda.call(array)
  puts "Array after removing duplicates: #{modified_array}"
}

my_array = [1, 2, 2, 3, 4, 4, 5]

duplicate_proc.call(my_array, duplicate_lambda)