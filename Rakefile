require 'rspec/core/rake_task'
require 'data_mapper'
require './app.rb'

RSpec::Core::RakeTask.new :spec

task default: [:spec]

task :data_mapper_upgrade do
  DataMapper.auto_upgrade!
end


task :data_mapper_auto_migrate do
  DataMapper.auto_migrate!
end
