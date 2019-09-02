require_relative '../lib/shift'
  describe 'class shift' do
    describe '#initialize' do
      before(:each) do
        @shift = Shift.new("17/10/2018", "09:00", "17/10/2018", "15:00", "permanent doctor", "General Medicine" )
      end
      it 'a shift has a start date' do
        expect(@shift.start_date).to eq "17/10/2018"
      end
      it 'a shift has a start time' do
        expect(@shift.start_time).to eq "09:00"
      end
      it 'a shift has a end date' do
        expect(@shift.end_date).to eq "17/10/2018"
      end
      it 'a shift has a end time' do
        expect(@shift.end_time).to eq "15:00"
      end
      it 'a shift is worked by an agency or permanent doctor' do
        expect(@shift.doctor_type).to eq "permanent doctor"
      end
      it 'a shift is worked at a particular department' do
        expect(@shift.department).to eq "General Medicine"
      end
    end
  end
