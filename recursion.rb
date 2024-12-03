def fibs(n)
  output_arr = []
  n.times do |i|
    if i < 2
      output_arr << i
    else
      output_arr << output_arr[i-1] + output_arr[i-2]
    end
  end
  output_arr
end

# p fibs(1)

#RECURSIVE FIBONACCI Number of position
def fibo_r(n) #starts from position of number
  if n - 1 < 0
    return "ERROR, PLEASE PUT INTEGER > 1"
  elsif n-1 < 2
    return n-1
  else
    return fibo_r(n-1) + fibo_r(n-2)
  end
end

# p fibo_r(10)

#Recursive Fibonacci
def fibs_recur(n, output_arr = [], x = 0)
  if x == n
    return output_arr
  elsif x < 2
    output_arr.push(x)
    x+=1
    return fibs_recur(n, output_arr,x)
  else
    output_arr << output_arr[x-1] + output_arr[x-2]
    x+=1
    return fibs_recur(n,output_arr,x)
  end
  output_arr
end



def looked_up_solution(n)
  if n == 1
    return [0]
  end
  if n == 2
    return [0,1]
  end

  fibo_seq = looked_up_solution(n-1)
  fibo_seq << fibo_seq[-1] + fibo_seq[-2]
end

puts "iteration method: #{fibs(10)}"
puts "recursive method: #{fibs_recur(10)}"
puts "recursive method: #{looked_up_solution(10)}"