# require_relative 'tag'
# require_relative 'tagging'
# # require_relative 'data_mapper_setup'


class Link
  include DataMapper::Resource

property :id,     Serial
property :title,  String
property :url,    String
has n, :tags, through: Resource


def find_tagged_link(tag_name)
link.tags.map(&:tag_name)
end
end
#
#
# @tag_bubble = Tag.all.select { |tag| tag.tag_name== name}
# @link_bubble = Link.all.select {|link| link.id == @tag_bubble.link_id}
