require 'rake'
require 'rspec/core/rake_task'

task spec: 'spec:all'
task default: :spec

namespace :spec do
  ENV['TARGET_HOST'] = '10.0.1.64'
  # ENV['TARGET_USER'] = 'packer'
  # ENV['TARGET_PASS'] = 'packer'
  
  raise "Missing TARGET_HOST" if ENV['TARGET_HOST'].nil?
  raise "Missing TARGET_USER" if ENV['TARGET_USER'].nil?
  raise "Missing TARGET_PASS" if ENV['TARGET_PASS'].nil?

  targets = []
  Dir.glob('./spec/*').each do |dir|
    next unless File.directory?(dir)
    target = File.basename(dir)
    target = "_#{target}" if target == 'default'
    targets << target
  end

  task all: targets
  task default: :all

  targets.each do |target|
    original_target = target == '_default' ? target[1..-1] : target
    desc "Run serverspec tests to #{original_target}"
    RSpec::Core::RakeTask.new(target.to_sym) do |t|
      t.pattern = "spec/#{original_target}/*_spec.rb"
    end
  end
end
