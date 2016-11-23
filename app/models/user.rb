class User < ActiveRecord::Base
	
	require "bcrypt"

	before_create :set_encrypted_password
	attr_accessor :password
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  
  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true
  validates :password, :confirmation => true 
  validates_length_of :password, :in => 3..20, :on => :create

  
  def set_encrypted_password
  	self.encrypted_password = BCrypt::Password.create self.password
  end
end
