# to print any string
puts "Hello" # this will make sure to add new line at last
print "Hello World"
# another way of printing
puts "Haneef Syed"
# datatypes in ruby 
# containers where we can store the value which are called variables
character_name = "Haneef"
character_age = "29"
puts (character_name + " " + character_age)
# datatypes
name = "Haneef"
age = 22
location = 12.232
isMale = true
flaws = nil # it doesnt have a value as of now 
# strings in ruby and methods of strings
puts "This is String"
puts "this is\nhaneef" # this will be printing in 2 different lines
myName = "Haneef"
puts myName # printing
puts myName.upcase() # to convert to upper case
puts myName.downcase() # to convert to lower case
phrase = "W         ahash "
puts phrase.strip() # this will be trim the whole phrase
puts phrase.length() # to find the length of the string
puts phrase.include? "aha" # this will check wheather the string is present or not in the original string
puts phrase[0] # this will print out the first character of the string
puts phrase[0, 14] # this will print the string from range 0 to 13 index
puts phrase.index("h") # this will return the index of h
# now lets start working with numbers
puts 5
number = 5
puts number
puts 4.5
puts -90
puts 3+90
puts 2*6
puts 3**3
puts 10%3
num = 10
puts ("this is converted number " + num.to_s)
#methods in the number
numu = -20
puts numu.abs()
puts 4.3.round()
puts 3.4.ceil()
puts 3.3.floor()
puts Math.sqrt(25)
# taking input from the users
puts "Enter you Name:"
hisName = gets.chomp() # this will make sure that the input is not taking whole line
puts ("Hello " + hisName + " How R u?")
# Basic calculator in ruby
print "Enter the number 1:"
num1 = gets.chomp()
print "Enter the number 2:"
num2 = gets.chomp()
sum = num1.to_i + num2.to_i
puts ("Sum = " + sum.to_s)
# Arrays in ruby
arr = Array["haneef", "fazal", "sahil"]
puts arr[0] # indexing in array will start from zero itself
# in ruby there also have negative indexing 
puts arr[-1]
# slicing in array is also possible
puts arr[0, 2]
# if we want to create a array with no initial value so we can create using new
myArr = Array.new
myArr[0] = "Hello"
myArr[2] = "Byy"
puts myArr
# methods on arrays
puts myArr.length()
puts myArr.include? "Haneef"
puts myArr.reverse()
# puts myArr.sort()
# Hashes
location = {
  "gujarat" => "GJ", # deifferent types of adding key
  "Maha" => "MH"
}
puts location
# methods in ruby
def hello(name)
  puts "Hello " + name
end
hello("haneef")
# return statement
def sum(a, b)
  a.to_i + b.to_i
end
puts sum(1, 3)
# conditional statement
# and operator and or operator can be used
isTrue = false
if isTrue
  puts "Yes he is male"
elsif !isTrue
  puts "Maybe"
else
  puts "No he is not male"
end
# building a better calculator
print "Enter no. 1:"
number1 = gets.chomp()
print "Enter no. 2:"
number2 = gets.chomp()
print "Enter Operator:"
op = gets.chomp()
def calculator(a, b, c)
  if c == '+'
    return a.to_i + b.to_i
  elsif c == '-'
    return a.to_i - b.to_i
  elsif c == '*'
    return a.to_i * b.to_i
  elsif c == '/'
    return a.to_i/b.to_i
  else 
    return "Error"
  end
end
puts calculator(number1, number2, op)
# Case expression in Ruby
def ansday(day)
  case day
  when "mon"
    return "Monday"
  when "tue"
    return "Tuesday"
  when "wed"
    return "Wednesdat"
  end
end
puts ansday("mon")
# loops in Ruby
# while Loop
# printing from 1 to 10
index = 1
while index <= 10
  puts index
  index += 1
end
#Guess Game
secret_word = "haneef"
guess = ""
guess_count = 0
guess_limit = 3
out_of_guesses = false
while guess != secret_word and !out_of_guesses
  if guess_count < guess_limit
    print "Enter:"
    guess = gets.chomp()
    guess_count += 1 
  else
    out_of_guesses = true
  end
end
if out_of_guesses
  puts "You Lose :("
else 
  puts "You Won :)"
end
# For Loops in ruby
# for loops are majorly used to traverse the array or similar
friend = ["haneef", "fazal", "sufiyan"]
for f in friend
  puts f
end
# another way of traversing a array
friend.each do |f|
  puts f
end
# if you want to print any range
for i in 1..10
  puts i
end
# printing from 0 - 5
6.times do |index|
  puts index
end
# error handling in ruby
# just like try catch block we have begin rescue and end  block
begin
  friend["raju"]
  num = 10/0
rescue ZeroDivisionError
  puts "You have divided by Zero"
rescue TypeError => e
  puts e
end
#objects and classes in ruby
# we will be creating book object and classes
# the below is the class and we can also create a object of this class as well
class Book
  # to add attribute in the class you have to use specific keyword
  attr_accessor :title, :author, :pages
end
# to create a object of the same class we can use the below code
book1 = Book.new()
book1.title = "Harry"
book1.author = "JK Rowling"
book1.pages = 400
# to check how exactly the book1 look like 
puts book1
#initilaize method


