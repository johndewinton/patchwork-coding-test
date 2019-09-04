require_relative '../lib/shift'
  describe 'class shift' do
    before(:each) do
      @shift = Shift.new("17/10/18", "9:00", "17/10/18", "15:00", 6, 45, 0, "MWF Hospital", "General Medicine")
    end
    describe '#initialize' do
      it 'shift has a start date' do
        expect(@shift.start_date).to eq "17/10/18"
      end
      it 'shift has a start time' do
        expect(@shift.start_time).to eq "9:00"
      end
      it 'shift has an end date' do
        expect(@shift.end_date).to eq "17/10/18"
      end
      it 'shift has an end time' do
        expect(@shift.end_time).to eq "15:00"
      end
      it 'shift has a total hours' do
        expect(@shift.total_hours).to eq 6
      end
      it 'shift has a rate' do
        expect(@shift.rate).to eq 45
      end
      it 'shift has a total rate' do
        expect(@shift.total_rate).to eq 0
      end
      it 'shift has the company origin the doctor works for' do
        expect(@shift.workplace).to eq "MWF Hospital"
      end
      it 'shift has a department' do
        expect(@shift.department).to eq "General Medicine"
      end
    end
    describe '#rate_per_hour_with_multiplier?' do
      it 'can calculate the rate paid per hour when adding rate multipliers' do
        @shift.rate_per_hour_with_multiplier?
        expect(@shift.rate_per_hour_with_multiplier?).to eq 45
        @shift = Shift.new("17/10/18", "20:00", "18/10/18", "8:00", 6, 45, 0, "MWF Agency", "Accident and Emergency")
        @shift.rate_per_hour_with_multiplier?
        expect(@shift.rate_per_hour_with_multiplier?).to eq 121.5
      end
    end
    describe '#total_rate_calculation' do
      it 'can calculate the total paid for the shift' do
        @shift.total_rate_calculation
        expect(@shift.total_rate_calculation).to eq 270
      end
    end
  end
