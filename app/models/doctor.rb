class Doctor < User
  has_many :appointments

  def set_default_role
    self.role ||= :doctor
  end
end
