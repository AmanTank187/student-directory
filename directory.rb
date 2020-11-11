
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #Creating an array
  students = []
  #Get first name
  name = gets.chomp
  #While the name variable is not empty, next piece of code will run.
  while !name.empty? do
    #push the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #Get another name
    name = gets.chomp
  end
  #return the students array
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-----------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
  puts
end

def interactive_menu
  students = []
  loop do
    #Showing a menu and asking the user for a input
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
  #Save the users input into a variable
  selection = gets.chomp

  case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
    end
  end
end

interactive_menu()
