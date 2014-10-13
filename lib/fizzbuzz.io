expect := method(actual, expected, if(actual == expected, "PASS" println, "FAIL" println))
it := method(description, expectation,
	description println
	expectation println
)

Fizzbuzz := Object clone

Fizzbuzz divisibleBy3 := method(number, if(number % 3 == 0))

Fizzbuzz divisibleBy5 := method(number, if(number % 5 == 0))

Fizzbuzz divisibleBy15 := method(number, if(number % 15 == 0))

Fizzbuzz play := method(number, 
	result := ""
	if(divisibleBy15(number) == true) then(result = "FizzBuzz") elseif(
		divisibleBy3(number) == true) then(result = "Fizz") elseif(
		divisibleBy5(number) == true) then(result = "Buzz") else(
		result = number)
	result
)

for(i, 1, 20, 1, Fizzbuzz play(i) println)

it("it should be divisible by 3",
  expect(Fizzbuzz divisibleBy3(3), true)
)

it("it should be divisible by 5",
expect(Fizzbuzz divisibleBy5(5), true)
)

it("it should be divisible by 15",
expect(Fizzbuzz divisibleBy15(15), true)
)

it("it should print the number if not divisible by 3, 5, 15",
expect(Fizzbuzz play(1), 1)
)

it("it should print Fizz if divisible by 3",
expect(Fizzbuzz play(3), "Fizz")
)

it("it should print Buzz if divisible by 5",
expect(Fizzbuzz play(5), "Buzz")
)

it("it should print FizzBuzz if divisible by 15",
expect(Fizzbuzz play(15), "FizzBuzz")
)


// Fizzbuzz play := method(number, result) := ""
// if(self divisibleBy3(number), result = result .. "Fizz", result)
// if(self divisibleBy5(number), result = result .. "Buzz", result = number)
// if(result isEmpty, number, result)
