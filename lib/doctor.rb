class Doctor
  attr_reader :name,
              :specialty,
              :education,
              :salary

  def initialize(info)
    @name      = info[:name]
    @specialty = info[:specialty]
    @education = info[:education]
    @salary    = info[:salary]
  end
end
