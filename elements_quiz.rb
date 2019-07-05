class Element 
  
  attr_accessor :name, :atomic_number
  
  def initialize(name, atomic_number)
    @name = name
    @atomic_number = atomic_number
  end
  
end
class Quizzer
  @@total_questions = 0
  @@periodic_table = []                               # "@@" means it is a class variable. In this case, "Quizzer" owns it.
                                                      # Unlike instances, there is only one of any given class, so there is only one
                                                        # "Quizzer.periodic_table."
 
                                                      # "self." before a method means it is a class method. "Quizzer" has no 
                                                        # 'initialize' method, and does not make instances.
  def self.add_element(element)
    @@periodic_table << element
    @@total_questions += 1
  end
 
  def self.quiz_element(element)                      # "self.quiz_element(element)" will take in one element and quiz the user.
    puts "What is the atomic number of 
      #{element.name}?"
    answer = gets.chomp.to_i
    
    @@correct_answers += 1
    if answer == element.atomic_number
      puts "Great job! You are correct. Your 
        current score is #{@@correct_answers} 
        out of #{@@total_questions}."
    else
      puts "Oops! #{element.name} has an atomic 
        number of #{element.atomic_number}. 
        You provided #{answer}. Your current 
        score is #{@@correct_answers} out of 
        #{@@total_questions}."
    end
  end
 
  def self.start_quiz                                 # "self.start_quiz" will start the quiz routine.
    @@periodic_table.each do |element|
      self.quiz_element(element)
    end
    puts "The quiz is over! Well done."
  end
  
end 

Quizzer.add_element(Element.new("Hydrogen",1))
Quizzer.add_element(Element.new("Helium",2))
Quizzer.add_element(Element.new("Lithium",3))
  
Quizzer.start_quiz                                    # Finally, this is how to start the quiz.