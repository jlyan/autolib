class User < ActiveRecord::Base

  def self.authenticate(name,password)
    where("name = ? AND password = ?", name, password).first
  end
end
