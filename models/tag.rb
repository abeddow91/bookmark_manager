require_relative 'data_mapper_setup'


class Tag
  include DataMapper::Resource

property :id,          Serial
property :tag_name,    String

# belongs_to :link, required: false

end
