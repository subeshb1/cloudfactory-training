class Student
  attr_reader :grade

  def initialize(name, grade)
    @name = name
    @grade = ['A','B','C','D','E','F'].include?(grade) ? grade : 'F'
  end

  def better_grade_than?(other_student)
    grade < other_student.grade
  end
end