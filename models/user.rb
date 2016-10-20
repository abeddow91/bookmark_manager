require 'bcrypt'

class User
  include DataMapper::Resource

property :id,          Serial
property :user_name,   String
property :password_digest,    Text

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
