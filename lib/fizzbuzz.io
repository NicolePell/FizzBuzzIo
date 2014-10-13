expect := method(actual, expected, if(actual == expected, "PASS" println, "FAIL" println))

Fizzbuzz := Object clone

Fizzbuzz divisibleBy3 := method(number, if(number % 3 == 0))

Fizzbuzz divisibleBy5 := method(number, if(number % 5 == 0))

Fizzbuzz divisibleBy15 := method(number, if(number % 15 == 0))

Fizzbuzz play := method(number, 
	if(divisibleBy15(number) == true) then ("FizzBuzz" println)
	if(divisibleBy3(number) == true) then ("Fizz" println)
	if(divisibleBy5(number) == true) then ("Buzz" println)
	if(number println))

for(i, 1, 20, Fizzbuzz play(i))

// prints the fizz or buzz but still prints the number


/* "it should be divisible by 3" println
expect(Fizzbuzz divisibleBy3(3), true)

"it should be divisible by 5" println
expect(Fizzbuzz divisibleBy5(5), true)

"it should be divisible by 15" println
expect(Fizzbuzz divisibleBy15(15), true)

"it should print the number if not divisible by 3, 5, 15" println
expect(Fizzbuzz play(1), 1)

"it should print Fizz if divisible by 3" println
expect(Fizzbuzz play(3), "Fizz")

"it should print Buzz if divisible by 5" println
expect(Fizzbuzz play(5), "Buzz")

"it should print FizzBuzz if divisible by 15" println
expect(Fizzbuzz play(15), "Fizz")
*/

/* Number divisible by 3
Number divisible by 5
Number divisible by 15
Print number if not divisible by x
Print 'Fizz' for divisible by 3
Print 'Buzz' for divisible by 5
Print 'FizzBuzz' for divisible by 15
*/


// Fizzbuzz play := method(number, result) := ""
// if(self divisibleBy3(number), result = result .. "Fizz", result)
// if(self divisibleBy5(number), result = result .. "Buzz", result = number)
// if(result isEmpty, number, result)
