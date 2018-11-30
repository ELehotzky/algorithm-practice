# Fibonacci Challenge
# Introduction
# The Fibonacci Sequence is the series of numbers: 1, 1, 2, 3, 5, 8, 13, 21, 34, ... The next number is found by adding up the two numbers before it. Example: the next number in the sequence above is 21 + 34 = 55

# The Problem Statement
# We want to write a function that takes n as an argument and prints the nth Fibonacci number in the sequence. Think of n being the step in the sequence.

# Example
# Here are some example inputs and their expected return values:

# If n = 1, output should be 1 If n = 2, output should be 1 If n > 2, output should be sum of the previous two values

# def fibonacci(n)
#   # ...
# end

# fibonacci(7)
# # => 13
# You can place your solution in the fibonacci.rb file that's provided in this repo.

# Bonus
# How could we refactor your solution to use recursion?

# def fibonacci(n)
# 	if (n <= 1) 
# 		return n;
# 	else 
# 		fibonacci(n-1) + fibonacci(n-2)
# 	end
# end

# def fibonacci(n) 
# 	fibonacci = [1, 1]

# 	if (n <= 2)
# 		return 1
# 	else 
# 		i = 0
# 		while fibonacci.length < n
# 			temp = fibonacci[i-1] + fibonacci[i]
# 			fibonacci << temp
# 			i+=1
# 		end
# 	end
# 	return fibonacci.last
# end

def fib_rec(n)
	n <= 1 ? n: (fib_rec(n-1) + fib_rec(n-2))
end

# recursive is much slower in this case than loops; you can make it faster by saving it to memory

puts fib_rec(2)
puts fib_rec(3)
puts fib_rec(5)
puts fib_rec(7)
puts fib_rec(8)