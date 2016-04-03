class Admin < ActiveRecord::Base
  has_secure_password

  attr_accessor :current_password

  def validates_current_password
    unless password.blank?
      admin = Admin.find_by(id: id)
      unless admin.authenticate(current_password)
        errors.add(:current_password, 'が間違っています')
      end
    end
  end
end
