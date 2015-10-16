# Ruby Solution to Project Euler 25 Using Enumerations
# Michael Vessia

class Fibonacci
  class << self
    include Enumerable

    def each
      return to_enum unless block_given?
      a = b = 1
      loop do
        yield a
        a, b = b, a + b
      end
    end
  end
end

puts Fibonacci.find_index { |i| i.to_s.length >= 1000 } + 1
