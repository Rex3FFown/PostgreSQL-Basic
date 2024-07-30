--Numeric Data Types
Smallint: Range: -32,768 to 32,767, Size: 2 bytes
Integer: Range: -2,147,483,648 to 2,147,483,647, Size: 4 bytes
Bigint: Range: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807, Size: 8 bytes
Decimal: Range: User-defined precision and scale, Size: Variable (each digit requires 1 byte)
Numeric: Range: User-defined precision and scale, Size: Variable (each digit requires 1 byte)
Real: Range: 6 decimal digits precision, approximately ±1.18E-38 to ±3.4E+38, Size: 4 bytes
Double Precision: Range: 15 decimal digits precision, approximately ±2.23E-308 to ±1.8E+308, Size: 8 bytes
Smallserial: Range: 1 to 32,767, Size: 2 bytes
Serial: Range: 1 to 2,147,483,647, Size: 4 bytes
Bigserial: Range: 1 to 9,223,372,036,854,775,807, Size: 8 bytes
--Character Data Types
Char(n): Range: Up to 8,000 characters, Size: N + 1 byte
Varchar(n): Range: Up to 1 GB, Size: Number of characters used + 1 byte
Text: Range: Up to 1 GB, Size: Number of characters used + 1 byte
Boolean Data Type
Boolean: Range: TRUE, FALSE, Size: 1 byte
--Date and Time Data Types
Date: Range: 4713 BC to 5874897 AD, Size: 4 bytes
Time: Range: 00:00:00 to 24:00:00, Size: 8 bytes
Timestamp: Range: 4713 BC to 294276 AD, Size: 8 bytes
Timestamptz (Timestamp with Time Zone): Range: 4713 BC to 294276 AD, Size: 8 bytes
Interval: Range: -178,000,000 years to 178,000,000 years, Size: 16 bytes
