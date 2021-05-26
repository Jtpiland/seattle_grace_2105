require './lib/doctor'
require './lib/hospital'
require './lib/network'

RSpec.describe do
  before(:each) do
    @meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    @alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
    @seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [@meredith, @alex])
    @miranda = Doctor.new({name: "Miranda Bailey", specialty: "General Surgery", education: "Stanford University", salary: 150_000})
    @derek = Doctor.new({name: "Derek Sheperd", specialty: "Neurosurgery", education: "University of Pennsylvania", salary: 125_000})
    @grey_sloan = Hospital.new("Grey Sloan Memorial", "Larry Maxwell", [@miranda, @derek])
    @gsmn = Network.new("Greater Seattle Medical Network")
  end

  it "exists" do

    expect(@gsmn).to be_a(Network)
  end

  it "has hospitals" do

    @gsmn.add_hospital(@seattle_grace)
    @gsmn.add_hospital(@grey_sloan)

    expect(@gsmn.hospitals).to eq([@seattle_grace, @grey_sloan])
  end

  it "can find the highest paid doctor" do

    @gsmn.add_hospital(@seattle_grace)
    @gsmn.add_hospital(@grey_sloan)

    expect(@gsmn.highest_paid_doctor).to eq(@miranda)
  end

  it "can list doctors by hospital" do 

    @gsmn.add_hospital(@seattle_grace)
    @gsmn.add_hospital(@grey_sloan)

    expect(@gsmn.doctors_by_hospital).to eq(doctor_hospital)
  end
end
