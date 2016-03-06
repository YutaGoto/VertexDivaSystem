class Admin < ActiveRecord::Base

  has_secure_password

  attr_accessor :current_password

  def validates_current_password
    # Check if the user tried changing his/her password
    unless password.blank?
      admin = Admin.find_by(id: id)
      # authenticateで現在のパスワードと比較してくれるらしい
      unless admin.authenticate(current_password)
        # Add an error stating that the current password is incorrect
        errors.add(:current_password, 'が間違っています')
      end
    end
  end
end
