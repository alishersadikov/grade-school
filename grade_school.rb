class School
  def initialize
    @students = {}
  end

  def students(grade)
    @students[grade]&.sort || []
  end

  def add(name, grade)
    @students[grade] = [] unless @students[grade]
    @students[grade] << name
  end

  def students_by_grade
    @students.sort.map do |row|
      { grade: row[0], students: row[1].sort}
    end
  end
end

input = gets
input = input.split
puts input

school = School.new
case input
when input.first == 'Add'
  school.send(input.first.downcase, name, grade)
end
