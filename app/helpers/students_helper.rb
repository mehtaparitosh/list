module StudentsHelper
  def grade(int)
    case int
    when -2
      return "Nursery"
    when -1
      return "LKG"
    when 0
      return "UKG"
    when 1
      return "I"
    when 2
      return "II"
    when 3
      return "III"
    when 4
      return "IV"
    when 5
      return "V"
    when 6
      return "VI"
    when 7
      return "VII"
    when 8
      return "VIII"
    when 9
      return "IX"
    when 10
      return "X"
    when 11
      return "XI"
    when 12
      return "XII"
    when 13
      return "College"
    when 14
      return "N/A"
    else
      return "N/A"
    end
  end
end
