class User < ActiveRecord::Base
  attr_accessible :email, :password, :username, :crypted_password, :password_confirmation, :role_ids
  acts_as_authentic
  
  has_and_belongs_to_many :roles
  
  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym}
  end
end
