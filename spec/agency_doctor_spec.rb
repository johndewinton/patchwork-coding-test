require_relative '../lib/agency_doctor'
  describe 'class agency_doctor' do
    describe '#initialize' do
      before(:each) do
        @agency_doctor = AgencyDoctor.new("GP", 45, "MWF Agency")
      end
      it 'agency doctor has a title' do
        expect(@agency_doctor.title).to eq "GP"
      end
      it 'agency doctor has an hourly rate' do
        expect(@agency_doctor.hourly_rate).to eq 45
      end
      it 'agency doctor works for an agency' do
        expect(@agency_doctor.agency).to eq "MWF Agency"
      end
    end
  end
