# Title: Understanding basic data types in R
# Author details: Author: Mairead Bermingham, Contact details: mairead.bermingham@ed.ac.uk
# Script and data info: This script will examine some of the basic data types in R ans R functions that can be used to examine them
# Data was collected was inputted on the 22 May 2022. 
# Copyright statement: This script is the product of University of Edinburgh.

# **Understanding data types in R**  
#Everything in R is an object. A data type of a variable specifies the type of 
#data that is stored inside that variable.

### R has 6 basic types.
# character: “BMI”, “Service user”  
#numeric (real or decimal):  1.0, 15.3   
# integer: -1,2  
#logical: True, False  
# complex 1+4i  
# raw: "Hello" is stored as 48 65 6c 6c 6f  

### R also provides many functions to examine data type features, for example  
# `class()` - what kind of object is it (high-level)?  
# `typeof()` - what is the object’s data type (low-level)?  
# `length()` - how long is the data?  
# `attributes()` - does the data have any metadata?  
  
  
#Let's discuss each of these R data types one by one.  

## **String or character data type** 
#Character strings are symbols, letters, words or phases inside double or single quotation marks. 
#Lets create a string object:
a <- "Service user"

#What is the object’s class?
class(a)

#What is the object’s data type?
typeof(a)


### What is the difference between `class()` and `typeof()`?
#`typeof()` determines the (R internal) type or storage mode of any object. 
#On the other hand, `class()` is used to define/identify what "type" an object is 
#from the point of view of object-oriented programming in R. The main difference between `class()` 
#and `typeof()` is that the first can be defined by the user, but typeof() cannot. For example: 

#What is the object’s class?
class(a)

#Class can be user defined.
class(a)<-"newclass"
class(a)


#What is the object’s data type?
typeof(a)


#You cannot assign a different type using `typeof()`.
typeof(a)<-"newclass"



## **Integer data type**
#The  integer data type specifies real values without decimal points, 
#i.e., 1, 12, 20, and −4 are integers, 1.0, 11.5, 20.1, and −4.3 are not. 
#Lets create an integer object:
b <- 10:20
b

#What is the object’s data type?
typeof(b)

#How long is b? 
length(b)

#Does b have any metadata?
attributes(b)


## **Numeric Data Type**
#In R, the  numeric  data type represents all real numbers with or without decimal values. 
#Note that, by default, all numbers are double in R and that Inf, -Inf, NaN, the scientific 
#and hexadecimal notation of numbers are also doubles. 
#Double-precision floating-point format is a computer number format, 
#usually occupying 64 bits in computer memory. 
#Whereas, single-precision number, usually occupying 32 bits in computer memory. 
#For example, lets create a numeric object:
c <- as.numeric(b)
c

#What is the object’s data type?
typeof(c)


## **Logical data type**
#The  logical  data type in R is also known as boolean data type. 
#It can only have two values: TRUE  and  FALSE. Lets create a logical object:
d<-TRUE

#What is the object’s data type?
typeof(d)



## **Complex data type**
#The complex data type is an object that includes an imaginary number (i). 
#As imaginary numbers are not generally used in statistics, this data type is not very common. 
#The function to check the data type is `is.complex()`. Lets create a complex object:
e<- 1 + 2i 
typeof(e)
is.complex(e)


## **Raw data type in R**
#The raw data type holds raw bytes, so it is a very unusual data type. 
#For instance, you could transform a character object or a integer numeric value to a raw object with the `charToRaw()` and `intToBits()` functions, respectively. Lets create a raw object from a character object:
f <- charToRaw("Service user")
f
typeof(a)

#Lets create a raw object from an interger object:
b <- intToBits(3)
typeof(b) 
is.raw(b)



# **Data types coercion in R**
#You can coerce data types in R with the functions starting with as., summarized in the following table:
Table<-data.frame(Function=c("as.character", "as.numeric", "as.double", "as.integer", "as.logical", "as.raw"), 
CoercedDataType=c("Character", "Numeric", "Double", "Integer", "Boolean", "Raw"))
colnames(Table)[2]<-"Coerced data type"
knitr::kable(Table)


#For example, if you wanted to coerce a numeric(double) to integer object, you could do as follows:
g<- 3
typeof(g) 
g <- as.integer(g)
typeof(g)

#Similarly, you could also coerce a logical value to numeric (0 and 1) or a character string:
h <- TRUE
h <- as.numeric(h)
h 

i <- FALSE
i <- as.numeric(i)
i 

j <- TRUE
j <- as.character(j)
j 

#**Note**, if you attempt to coerce two non-compatible data types (like character to numeric) an error will arise:
k<-as.double("Service user")
#I hope these examples help you to improve your R programming skills. Happy Coding!