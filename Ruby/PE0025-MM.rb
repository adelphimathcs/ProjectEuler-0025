#Fibonacci class to handle generating fib numbers
class Fibonacci

  def initialize
    @fib_nums = [0,1]
  end

  def get_fib(n) 
    return -1 if n < 0 #error handling
    return @fib_nums[n] unless @fib_nums[n].nil?

    num = get_fib(n-1) + get_fib(n-2)

    @fib_nums[n] = num
    num
  end

  #Finds the first fibonacci number with a given length
  #Returns the number AND it's key in the hash
  #Example: big_fib(3) will return '144' and '12' as 144 is the 12th fib number
  def big_fib(len=1000)
    index = 0
    index+=1  until get_fib(index).to_s.size >= len 
    return get_fib(index),index
  end

end

myFib = Fibonacci.new
num,index = myFib.big_fib
puts num
puts index