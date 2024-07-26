-- CONCAT: Concatenates strings
SELECT CONCAT('Hello', ' ', 'World'); -- Output: 'Hello World'

-- CONCAT_WS: Concatenates strings with a separator
SELECT CONCAT_WS('-', '2024', '07', '26'); -- Output: '2024-07-26'

-- LEFT: Returns the first N characters from a string (N is 5 in this example)
SELECT LEFT('Aircraft', 5); -- Output: 'Aircra'

-- RIGHT: Returns the last N characters from a string (N is 5 in this example)
SELECT RIGHT('Aircraft', 5); -- Output: 'craft'

-- LENGTH: Returns the length of a string
SELECT LENGTH('Aircraft'); -- Output: 8

-- REPLACE: Replaces occurrences of a substring within a string
SELECT REPLACE('Airport Terminal', 'Terminal', 'Gate'); -- Output: 'Airport Gate'

-- REVERSE: Reverses the string
SELECT REVERSE('Aircraft'); -- Output: 'tfiarcA'

-- SUBSTRING: Extracts a substring from a string (from position 2 to 5)
SELECT SUBSTRING('Aircraft', 2, 5); -- Output: 'ircr'

-- LOWER: Converts string to lowercase
SELECT LOWER('AIRCRAFT'); -- Output: 'aircraft'

-- UPPER: Converts string to uppercase
SELECT UPPER('aircraft'); -- Output: 'AIRCRAFT'
