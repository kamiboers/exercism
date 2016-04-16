class School
  VERSION = 1

  def initialize
    @roster = Hash.new
  end

  def to_h
    @roster.sort.to_h
  end

  def add(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
    @roster[grade] = @roster[grade].sort
  end

  def grade(number)
    @roster[number] ||= []
  end

end
