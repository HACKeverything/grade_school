class School
  def initialize
    @students = {}
  end

  def to_h
    Hash[@students.sort.each {|arr| arr[1].sort!}]
  end

  def add(name, grade)
    @students[grade] = [] if @students[grade] == nil
    @students[grade] << name
  end

  def grade(grade)
    @students[grade] = [] if @students[grade] == nil
    @students[grade]
  end
end

  