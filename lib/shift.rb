class Shift
  attr_reader :start_date, :start_time, :end_date, :end_time, :doctor_type, :department
  def initialize(start_date, start_time, end_date, end_time, doctor_type, department)
    @start_date = start_date
    @start_time = start_time
    @end_date = end_date
    @end_time = end_time
    @doctor_type = doctor_type
    @department = department
  end
end
