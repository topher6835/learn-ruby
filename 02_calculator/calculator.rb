def add (add1, add2)
	add1 + add2
end

def subtract (sub1, sub2)
	sub1 - sub2
end

def sum (array)
	sum = 0
	array.each { |add| sum += add}
	sum
end

def multiply (arry)
	prod = 1
	arry.each { |mult| prod *= mult}
	prod
end

def power (num, exp)
	num**exp
end

def factorial (fact)
	result = 1
	(fact..1).each { |i| result *= i}
	result
end