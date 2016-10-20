class User
  include DataMapper::Resource

property :id,          Serial
property :user_name,   String
property :password,    String

@count = 0

class << self
  attr_accessor :count
end

def self.user_count
  @count +=1
end

end
