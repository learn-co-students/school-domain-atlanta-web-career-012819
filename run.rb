require_relative 'lib/school.rb'
require 'pry'


northern = School.new("northern nash")
northern.add_student("scott", 10)
northern.add_student("liz", 9)
northern.add_student("deantee", 10)

# norsort = northern.sort

binding.pry
