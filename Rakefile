#
# RubyLearn
# (c) Alessio Saltarin 2017-2021
#
# This software is distributed under MIT License
# See LICENSE file
#

require 'rake/testtask'

task default: %w[run]

task :run do
  puts "Welcome to RubyLearn rakefile. Using 'test' task is the only way to run this program!"
end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*_test.rb']
end
desc 'Run tests'


