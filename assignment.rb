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

# Program - 04
class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

q1 = "Capital of Maharashtra?\n(a)Mumbai\n(b)Pune\n(c)Nagpur"
q2 = "Capital of Telangana?\n(a)Nellore\n(b)Hyderabad\n(c)Nagpur"
q3 = "Capital of AP?\n(a)Rajkot\n(b)Nashik\n(c)Vijaywada"

questions = [
  Question.new(q1, "a"),
  Question.new(q2, "b"),
  Question.new(q3, "c")
]

def run_quiz(questions)
  answer = ""
  score = 0
  for question in questions
    puts question.prompt
    answer = gets.chomp()
    if answer == question.answer
      score += 1
    end
  end
  puts ("You got Score " + score.to_s + "/" + questions.length.to_s) 
end

run_quiz(questions)
