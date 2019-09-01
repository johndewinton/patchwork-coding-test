require_relative '../lib/permanent_doctor'
  describe 'class permanent_doctor' do
    before(:each) do
      @permanent_doctor = PermanentDoctor.new("GP", 45, "MWF Hospital")
    end
    describe '#initialize' do
      it 'permanent doctor has a title' do
        expect(@permanent_doctor.title).to eq "GP"
      end
      it 'permanent doctor has an hourly rate' do
        expect(@permanent_doctor.hourly_rate).to eq 45
      end
      it 'permanent doctor works for a hospital' do
        expect(@permanent_doctor.hospital).to eq "MWF Hospital"
      end
    end
  end
