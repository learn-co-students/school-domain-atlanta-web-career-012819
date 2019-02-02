# school.rb
require 'pry'

class School
attr_accessor :roster
attr_reader :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade].push(student_name)
    else
      @roster[grade] = []
      @roster[grade].push(student_name)
    end
  end

  def grade(grade)
    grade = @roster[grade].each {
        |student| }
  end

  def sort
    roster_hash = @roster
    alpha_roster = roster_hash.transform_values{|value| value.sort}
  end
# binding.pry
end
