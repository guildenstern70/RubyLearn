#
# RubyLearn
# (c) Alessio Saltarin 2017-2020
#
# This software is distributed under MIT License
# See LICENSE file
#

require 'rake/testtask'

task default: %w[run]

task :run do
  puts "Welcome to RubyLearn rakefile. Using 'test' task is the only way to run this program!"
  Rake::Task['test'].invoke
end

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['./test/**/*.rb']
end

