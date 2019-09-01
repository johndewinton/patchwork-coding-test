class AgencyDoctor
  attr_reader :title, :hourly_rate, :agency
  def initialize(title, hourly_rate, agency)
    @title = title
    @hourly_rate = hourly_rate
    @agency = agency
  end
end
