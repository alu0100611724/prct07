require 'rake'

task :default => :spec

desc "run rspec tests"
task :spec do
  sh "rspec -Ilib ./lib/* -Ispec spec/racional_spec.rb --format documentation"
end

desc "build HTML"
task :html do
  sh "rspec -Ilib ./lib/* -Ispec spec/racional_spec.rb --html documentation"
end

desc "install gems"
task :install do
  sh "bundle install"
end

