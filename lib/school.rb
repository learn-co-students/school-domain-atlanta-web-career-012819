require 'pry'

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name 
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end 

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorting = {}
    roster.each do |grade, stu|
    sorting[grade] = stu.sort
    end 
    sorting
  end 


    # @roster[grade] => []

#     hash["new_key"] = []
# hash["new_key"] << "new_value_for_value_array"
#

    # hash[key] => value
# hash
#  => {"new_key"=>["new_value_for_value_array"]}
    # @roster[grade] << name

end
