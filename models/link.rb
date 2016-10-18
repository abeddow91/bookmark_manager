require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

property :id,     Serial
property :title,  String
property :url,    String



end

DataMapper.setup(:production, "postgres://acaqcgrlmmoiuv:PeLmwta4UvU43iSeU9D9gjgYwu@ec2-54-243-202-84.compute-1.amazonaws.com:5432/d5ebvlq8ipjl04")
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
