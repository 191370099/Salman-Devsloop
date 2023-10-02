# Lambda:-
#   Lambda follow Arity strictly. In Lambda if we pass wrong number of parameters i mean
#   if we had declare two arguments and passing 3 or 1 parameters then error will encounter.

lambda1 = lambda { |x| puts x}
lambda1.call(2) # Output will be 2
# lambda1.call(2,2) # Error will araise

# Proc:-
#   Proc didn't follow Arity. If we had declare wrong number of parameters then  it will
#   manage them by his self. i mean if we pass extra parameters then it will ignore extra
#   ones and if we pass less then it will assign them nil.

proc1 = Proc.new { |num| puts num}
proc1.call(2) # Output will be 2
proc1.call(2,3) # Output will be 2 and ignore 3
proc1.call # Output will be nil no error occur

# Implicit Return:
#   in both proc and lambda the last expression is automatically returned it is Implicit return

# Explixit Return:
# we can use return statement anywhere if we want to return something specific or based
# on some condition

# Explicit Return Function of Lambda:-
#   if there is any return keyword inside the lambda block then it will just exit from
#   block.

def test_lambda
  lambda2 = lambda { return "I am lambda"}
  result1 = lambda2.call
  puts "i am function #{result1}"
end

test_lambda # Output "i am function I am lambda"

# Implicit Return Function of Lambda:-

def test_lambda2
  lambda3 = lambda { puts "I am lambda"}
  lambda3.call
  puts "End Statement"
end

test_lambda2

# Explicit Return Function of Proc:-
#   if there is any return keyword inside the Proc block then it will exit from
#   the method too. 

def test_proc
  proc2 = Proc.new { return "I am Proc"}
  result2 = proc2.call
  puts "i am function #{result2}"
end

test_proc # Output will be nil because it not reach to puts

# Implicit Return Function of Proc:-

def test_proc2
  proc3 = Proc.new { puts "I am Proc"}
  proc3.call
  puts "End Statement"
end

test_proc2