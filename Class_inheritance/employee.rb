class Employee

  attr_reader :salary, :boss, :name

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss

  end

  def bonus(multiplier)
    @salary * multiplier
  end

  def add_boss(boss)
    @boss = boss
  end

end