# code here!
require 'pry'
class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  attr_reader :roster

  def add_student(name,grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.each do |grade,students|
      sorted_hash[grade] = students.sort
    end
    sorted_hash
  end
end
