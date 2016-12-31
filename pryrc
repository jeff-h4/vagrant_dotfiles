
# Pry Initialization Script

puts "Executing ~/.pryrc Initialization Script"
def stack
  caller.select {|line| line.include? "themis" }
end

Dir.chdir('/home/vagrant/clio/themis')
# Source factories
puts "  Sourcing Themis factories"
Factory.definition_file_paths = %W(#{Rails.root}/spec/factories)
Factory.find_definitions
puts "  Sourcing Iris factories"
Factory.definition_file_paths = %W(#{Iris::Engine.root}/spec/factories)
Factory.find_definitions
# load Rails Console helpers like reload
require 'rails/console/app'
extend Rails::ConsoleMethods
puts 'Rails Console Helpers loaded'

puts "Enabling SQL output in console"
ActiveRecord::Base.logger = Logger.new(STDOUT)

puts "Pry Initialization complete!"
