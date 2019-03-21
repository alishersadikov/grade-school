class School
  def initialize
    @students = {}
  end

  def students(grade)
    @students[grade]&.sort || []
  end

  def add(name, grade)
    unless @students[grade]
      @students[grade] = []
    end

    @students[grade] << name
  end

  def students_by_grade
    initial_list = []

    @students.sort.each_with_object({}) do |row, result|
      result[:grade] = row[0]
      result[:students] = row[1].sort
      initial_list << result
    end

    initial_list
  end
end
