require_relative 'data_mapper_setup'


class Link
  include DataMapper::Resource

property :id,     Serial
property :title,  String
property :url,    String
has n, :tags, through: Resource
# belongs_to :tag, model: Tag
#
#
def self.start(tag_1, *, tag_class: Tag)
  tags = [tag_class.create(tag_name: tag_name_1)]
  link = new(tags: tags)
  link
end

end
