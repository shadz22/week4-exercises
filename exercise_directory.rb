def input_student
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  # create an empty array
  students =[]
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "Please enter country of birth"
    country = gets.chomp
    puts "Please choose your cohort"
    cohort = gets.chomp.to_sym
    cohort = :November if cohort.empty? 
    # add the student hash to the array
    students << {name: name, country: country, cohort: cohort}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Please enter the name of another student"
    name = gets.chomp
   
  end
  # return the array of students
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  students.each_with_index do |student, index|
    puts "#{(index + 1)}. #{student[:name]} (#{student[:cohort]}) cohort".center(50)
    end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
#nothing happens until we call the methods
students = input_student
print_header
print(students)
print_footer(students)
