class School

	attr_reader :name
	attr_accessor :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name, grade)
		if @roster.has_key?(grade)
			@roster[grade] << name
		else
			@roster[grade] = [name]
		end
	end

	def grade(grade_level)
		@roster[grade_level]
	end

	def sort
		sorted = {}
		@roster.each do |grade, students|
			sorted[grade] = students.sort
		end
		sorted
	end

end