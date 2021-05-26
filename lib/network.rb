class Network
  attr_reader :network_name,
              :hospitals

  def initialize (network_name)
    @network_name = network_name
    @hospitals = []
  end

  def add_hospital(hospital)
    @hospitals << hospital
  end

  def highest_paid_doctor
    highest_paid = []
    @hospitals.each do |hospital|
      hospital.doctors.find_all do |doctor|
        highest_paid << doctor.salary
      end
    end
    highest_paid.max
  end

  def doctors_by_hospital
    doctor_by_hospital = Hash.new
      select_doctors
  end

end
