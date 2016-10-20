require 'bcrypt'
require 'dm-validations'

class User
  include DataMapper::Resource

  attr_accessor :password_confirmation

property :id,          Serial
property :user_name,   String
property :password_digest,    Text

validates_confirmation_of :password_digest

@count = 0

class << self
  attr_accessor :count
end

def self.user_count
  @count +=1
end

def password=(password)
  self.password_digest = BCrypt::Password.create(password)
end



end
