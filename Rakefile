require 'rake'

task :default => :spec

desc "run rspec tests"
task :spec do
  sh "rspec -Ilib ./lib/* -Ispec spec/racional_spec.rb"
end

desc "build HTML from README.md"
task :html do
  sh "kramdown README.md  > README.html"
end

desc "install gems"
task :install do
  sh "bundle install"
end

