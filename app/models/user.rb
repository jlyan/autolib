class User < ActiveRecord::Base

  def self.authenticate(name,password)
    where("name = ? AND password = ? ", name, password).first
  end

  def self.is_admin?(user)
    where("name = ? AND password = ? AND is_admin = 'yes'", user.name, user.password).first
  end
end
