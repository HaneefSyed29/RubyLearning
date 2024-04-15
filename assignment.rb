# Program - 01
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

# Program - 02
print "Enter Day Abbreviation:"
day = gets.chomp()
def ansday(day)
  case day
  when "mon"
    return "Monday"
  when "tue"
    return "Tuesday"
  when "wed"
    return "Wednesday"
  when "thu"
    return "Thursday"
  when "fri"
    return "Friday"
  when "sat"
    return "Saturday"
  else
    return "Invalid Abbreviations"
  end
end
puts ansday(day)

# Program - 03
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
