def pe0025
  solution = -1 
  prev = 0
  curr = 1
  while curr.to_s.length < 1000
    solution += 1
    curr, prev = prev, prev + curr
  end
  solution
end

puts pe0025
