numbers = [1..9]

start = numbers[0..2]
middle = numbers[3..-2]
end = numbers[-2..]
copy = numbers[..]

numbers = [0..9]
numbers[3..6] = [-3..-6]