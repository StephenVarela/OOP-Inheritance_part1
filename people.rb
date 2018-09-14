
class Person

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi my name is"
    puts "What my name is"
    puts "Who?? my name is"
    puts "What my name is #{@name}"
  end
end


class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an object"
  end
end



nadia = Instructor.new("Nadia")
puts nadia.greeting

chris = Student.new("Chris")
puts chris.greeting

nadia.teach
chris.learn

#chris.teach #does not work! because teach is a method of a instructor class and chris is a student class. Student and instructors have separate classes and do not inherit from each other. The inheritance is on their parent class Person (error undef method teach)
#nadia.learn #will also not work because the instructor class does not have a learn method (error undef method learn)
