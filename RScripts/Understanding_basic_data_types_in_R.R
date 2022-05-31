# Title: Understanding basic data types in R
# Author details: Author: Mairead Bermingham, Contact details: mairead.bermingham@ed.ac.uk
# Script and data info: This script will examine some of the basic data types in R ans R functions that can be used to examine them
# Data was collected was inputted on the 22 May 2022. 
# Copyright statement: This script is the product of University of Edinburgh.


#Everything in R is an object. A data type of a variable specifies the type of data that is stored inside that variable. .

#R has 6 basic types.
# By atomic, we mean the vector only holds data of a single type.
#character: “BMI”, “Sevice user”
#numeric (real or decimal):  1.0, 15.3 
#integer: -1,2
#logical: True, False
#complex 1+4i
#Raw: "Hello" is stored as 48 65 6c 6c 6f
#R also provides many functions to examine data type features, for example
#class() - what kind of object is it (high-level)?
#typeof() - what is the object’s data type (low-level)?
#length() - how long is the data?
#attributes() - does the data have any metadata?
Let's discuss each of these R data types one by one.
String or character data type

Character strings are symbols, letters, words or phases inside double or single quotation marks. With this in mind, you can verify that some object is of type character with the is.character function.
#Here is and example of character data. 
#Lets create the character data  x
a <- "Service user"
#what is the object’s class
class(a)
#what is the object’s data type
typeof(a)


#What is the difference between class and typeof
#typeof determines the (R internal) type or storage mode of any object. 
#On the other hand, class is used to define/identify what "type" an object is from the point of view of object-oriented programming in R. 
#The main difference between class and typeof is that the first can be defined by the user, 
but typeof cannot. 

#what is the object’s class
class(a)
c
# Class can be user defined
class(a)<-"newclass"
class(a)
#x is newclass

#what is the object’s data type
typeof(a)
#what is the object’s data type
# You cannot assign a different type using typeof()
typeof(a)<-"newclass"
Error in typeof(a) <- "newclass" : could not find function "typeof<-"

Integer Data Type
The  integer data type specifies real values without decimal points. 
For example,
#Here is and example of integer data. 
#An integer is defined as a number that can be written without a fractional component. 
For example, 1, 12, 20, and −4 are integers, 1.0, 11.5, 20.1, and −4.3 are not.
#Lets create integer data b
b <- 10:20
b
#what is the object’s data type
typeof(b)
# How long is b? 
length(b)
#Does b have any metadata?
attributes(b)
#No y does not have metadata

Numeric Data Type

#Here is and example of numeric (double precision) data. 
#Double-precision floating-point format is a computer number format, usually occupying 64 bits in computer memory
#single-precision number, usually occupying 32 bits in computer memory
In R, the  numeric  data type represents all real numbers with or without decimal values. For example,
 Note that, by default, all numbers are double in R and that Inf, -Inf, NaN, the scientific and hexadecimal notation of numbers are also doubles.
#Lets create integer data y
c <- as.numeric(b)
c
#what is the object’s data type
typeof(c)

Logical data type
The  logical  data type in R is also known as boolean data type. It can only have two values: 
TRUE  and  FALSE
. For example,
d<-TRUE
#what is the object’s data type
typeof(d)



Complex data type
The complex data type is an object that includes an imaginary number (i). As imaginary numbers are not generally used in statistics, this data type is not very common. The function to check the data type is is.complex.
0 + 2i 
typeof(0 + 2i ) # "complex"
is.complex(0 + 2i ) # TRUE


Raw data type in R
The raw data type holds raw bytes, so it is a very unusual data type. For instance, you could transform a character object or a integer numeric value to a raw object with the charToRaw and intToBits functions, respectively.
a <- charToRaw("R CODER")
a # 52 20 43 4f 44 45 52
typeof(a) # "raw"

b <- intToBits(3L)
typeof(b) # "raw"
As with the other data types, the function to verify the data type in this case is the is.raw function.
is.raw(b) # TRUE
A 
raw
 data type specifies values as raw bytes. You can use the following methods to convert character data types to a raw data type and vice-versa:
	charToRaw()
 - converts character data to raw data
	rawToChar()
 - converts raw data to character data
For example,
# convert character to raw
raw_variable <- charToRaw("Welcome to Programiz")
print(raw_variable)
print(class(raw_variable))
# convert raw to character
char_variable <- rawToChar(raw_variable)
print(char_variable)
print(class(char_variable))
Output
[1] 57 65 6c 63 6f 6d 65 20 74 6f 20 50 72 6f 67 72 61 6d 69 7a
[1] "raw"
[1] "Welcome to Programiz"
[1] "character"

Data types coercion in R
You can coerce data types in R with the functions starting with as., summarized in the following table:

#character: “BMI”, “Sevice user”
#numeric (real or decimal):  1.0, 15.3 
#integer: -1,2
#logical: True, False
#complex 1+4i
#Raw: "Hello" is stored as 48 65 6c 6c 6f

Table<-data.frame(Function=c("as.character", "as.numeric", "as.double", "as.integer", "as.logical", "as.raw"), 
CoercedDataType=c("Character", "Numeric", "Double", "Integer", "Boolean", "Raw"))
colnames(Table)[2]<-"Coerced data type"
Consider you want to coerce a double to integer, you could do as follows:
a <- 3
typeof(a) # "double"
a <- as.integer(a)
typeof(a) # "integer"
Morever, you could also coerce a logical value to numeric (0 and 1) or a character string:
b <- TRUE
b <- as.numeric(b)
b # 1

c <- FALSE
c <- as.numeric(c)
c # 0

d <- TRUE
d <- as.character(d)
d # "TRUE"
Nevertheless, if you try to coerce two non-compatible data types (like a character string to numeric) an error will arise:
as.double("R CODER")
Output
NA
Warning message: NAs introduced by coercion




