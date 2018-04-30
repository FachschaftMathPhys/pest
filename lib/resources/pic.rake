class Pic < Base
  has_one :tutor
  has_one :course
  has_one :term
  has_one :sheet
  def picture
    Base64.decode64(self.data)
  end
  def picture=(value)
    self.data=Base64.encode64(value)
  end
end
