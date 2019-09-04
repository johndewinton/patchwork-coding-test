require_relative "agency_doctor"
require_relative "permanent_doctor"
require 'date'

class Shift
  attr_reader :start_date, :start_time, :end_date, :end_time, :total_hours, :rate, :total_rate, :workplace, :department
  def initialize(start_date, start_time, end_date, end_time, total_hours, rate, total_rate, workplace, department)
    @start_date = start_date
    @start_time = start_time
    @end_date = end_date
    @end_time = end_time
    @total_hours = total_hours
    @rate = rate
    @total_rate = total_rate
    @workplace = workplace
    @department = department
  end

  def rate_per_hour_with_multiplier?
    if @start_time == "20:00" && @workplace == "MWF Agency"
      (rate * (1.5 * 1.8)).round(2)
    elsif @start_time == "9:00" && @workplace == "TT Agency"
      (rate * 1.3).round(2)
    elsif @start_time == "20:00" && @workplace == "TT Hospital" && @department == "Accident and Emergency"
      (rate * 1.5).round(2)
    else
      rate
  end
end

  def total_rate_calculation
    total_hours * self.rate_per_hour_with_multiplier?
  end

  # private

  # week_shifts = [












  # ]

end

# timing_array = @start_date.split("/").reverse
#     @startdate = Date.new(timing_array[0].to_i, timing_array[1].to_i, timing_array[2].to_i)
#     @array_of_dates = []
#     @array_of_rates = []
#     @start_time = start_time
#     @end_time = end_time
#     @total_rate = []
#     @doctor_type = doctor_type
#     @department = department

  # def date_change
  #   if @array_of_dates.length+1 % 4 == 0
  #     @array_of_dates << (@date+=1).to_s
  #   else
  #     @array_of_dates << @date.to_s
  #   end
  # end



