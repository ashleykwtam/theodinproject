#write your code here

def add(a,b)
	a + b 
end

def subtract(a,b)
	a - b
end

def sum(n)
	n.inject(0) { |sum, x| sum + x }
end

def multiply(n)
	final = 1
	n.each { |i| final *= i }
	final
end

def power(a,b)
	a ** b
end

def factorial(n)
	if n <= 1
		1
	else
		n * factorial(n-1)
	end
end