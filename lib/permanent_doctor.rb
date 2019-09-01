class PermanentDoctor
  attr_reader :title, :hourly_rate, :hospital
  def initialize(title, hourly_rate, hospital)
    @title = title
    @hourly_rate = hourly_rate
    @hospital = hospital
  end
end
