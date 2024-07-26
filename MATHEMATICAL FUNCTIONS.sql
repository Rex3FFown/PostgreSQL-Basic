-- ABS: Returns the absolute value of a numerical data
SELECT ABS(-10); -- Output: 10

-- CEIL: Rounds a decimal number up to the nearest integer
SELECT CEIL(7.2); -- Output: 8

-- FLOOR: Rounds a decimal number down to the nearest integer
SELECT FLOOR(7.9); -- Output: 7

-- SUM(FLOOR()): Sums the floored values of a column
SELECT SUM(FLOOR(3.5) + FLOOR(4.8)); -- Output: 7

-- PI(): Returns the value of pi
SELECT PI(); -- Output: 3.141592653589793

-- POWER: Calculates the power of a number
SELECT POWER(3, 4); -- Output: 81

-- RANDOM: Generates a random number
SELECT RANDOM(); -- Output: [Random number]

-- ROUND: Rounds a number to the specified number of decimal places
SELECT ROUND(9.876, 1); -- Output: 9.9

-- SIGN: Returns the sign of a number (-1 for negative, 1 for positive, 0 for zero)
SELECT SIGN(-25); -- Output: -1
SELECT SIGN(0); -- Output: 0
SELECT SIGN(25); -- Output: 1

-- SQRT: Calculates the square root of a number
SELECT SQRT(64); -- Output: 8

-- LOG: Calculates the logarithm (base 10) of a number
SELECT LOG(1000); -- Output: 3
