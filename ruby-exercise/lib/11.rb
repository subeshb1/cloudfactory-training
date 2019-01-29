require 'date'
class Vehicle
  def initialize(year)
    @year = year.to_i
  end

  def age
    calculate_age
  end

  private
  
  def calculate_age
    registered_date = DateTime.now.year - @year
  end
end