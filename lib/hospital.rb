class Hospital
  attr_reader :name,
              :chief_of_surgery,
              :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = []
  end

  def add_doctor(doctor)
      @doctors << doctor
  end

  def total_salary
    total_salary = 0
    @doctors.each do |doctor|
      total_salary += doctor.salary
    end
    total_salary
  end

  def lowest_paid_doctor
    lowest_paid = []
    @doctors.each do |doctor|
      lowest_paid << doctor.salary
    end
    lowest_paid.min
  end

  def specialties
    specialties = []
    @doctors.each do |doctor|
      specialties << doctor.specialty
    end
    specialties
  end
end
