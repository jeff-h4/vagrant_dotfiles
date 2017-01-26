
# Pry Initialization Script

puts "Executing ~/.pryrc Initialization Script"
def full_stack
  caller.select {|line| line.include? "themis" }
end

def stack
  trace = caller.select {|line| line.include? "themis" }
  trace = trace.map do |e|
    if e.include? "vendor"
      e = '--'
    end
    e
  end
end

def clear_query_cache
  ActiveRecord::Base.connection.query_cache.clear
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
