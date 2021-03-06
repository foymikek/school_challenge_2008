class School

  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day, student_names = [])
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = student_names
  end

  def add_student_name(student_name)
    student_names << student_name
  end

  def end_time
    raw_time = (hours_in_school_day.to_i) + (start_time.to_i)
    "#{raw_time}:00"
  end

  def is_full_time?
    if hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    clock_hour = (end_time.to_i) - 12
    "#{clock_hour}:00"
  end

end
