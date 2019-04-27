#write your code here
def add a, b
	a + b
end

def subtract a, b
	a - b 
end

def multiply *rest
	rest.reduce(:*)
end

def sum array
	array.sum
end

def power a, b
	a ** b
end

def factorial a
	(1..a).reduce(:*)
end