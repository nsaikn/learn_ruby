#write your code here

def add(x, y)
	x+y
end

def subtract(x,y)
	x-y
end

def sum(series)
	x = 0 
	for i in series 
		x += i
	end
	x
end

def multiply(series)
	x = 1
	for i in series 
		x *= i
	end
	x
end

def power(x,y)
	x**y
end

def factorial(x)
	if x > 0
		ans = 1 
		x.times { |i| ans*= (i+1)}
		ans
	elsif x == 0
		ans=0
	end
end

