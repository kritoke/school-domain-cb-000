# code here!
class School
  attr_accessor :name, :roster
  attr_writer :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if roster.key?(@grade)
      @roster[@grade] << @student_name
    else
      @roster[@grade] = []
      @roster[@grade] << @student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end
end
