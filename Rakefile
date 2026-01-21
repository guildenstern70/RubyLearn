#
# RubyLearn
# (c) Alessio Saltarin 2017-2026
#
# This software is distributed under MIT License
# See LICENSE file
#

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: %w[run]

desc "RubyLearn Rakefile - use 'rake test' to run tests"
task :run do
  puts "Welcome to RubyLearn rakefile. Using 'test' task is the only way to run this program!"
end

desc "Run all tests"
task :test do
  ENV['RUN_ALL_TESTS'] = 'true'
  Rake::Task['spec'].invoke
end


