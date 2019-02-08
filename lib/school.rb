require 'pry'
class School

  def initialize(roster)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade].push(name)
    else
      @roster[grade]=[name]
    end
  end

  def grade(grade)
    #need to return all keys from the hash
    #return names of students
    if @roster.has_key?(grade)
      @roster[grade].sort
    end
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
school = School.new("Bayside High School")
